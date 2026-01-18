use std::fs::File;
use std::io::BufReader;
use std::path::Path;

use crate::frb_generated::StreamSink;
use wharf::{Patch, Signature};

pub fn patch_wharf(
    patch_path: &str,
    sig_path: &str,
    old_path: &str,
    new_path: &str,
    sink: StreamSink<i64>,
) -> Result<(), String> {
    // patch
    let patch_file = File::open(patch_path).map_err(|e| e.to_string())?;
    let mut patch_reader = BufReader::new(patch_file);
    let mut patch = Patch::read(&mut patch_reader)?;

    // sig
    let sig_file = File::open(sig_path).map_err(|e| e.to_string())?;
    let mut sig_reader = BufReader::new(sig_file);
    let signature = Signature::read(&mut sig_reader)?;

    let mut hash_iter = signature.block_hash_iter;

    let old_dir = Path::new(old_path);
    let new_dir = Path::new(new_path);

    // todo: maybe we should ensure these actually exist?
    // either way I'll do that in the flutter layer though
    // FRB does not like the path type but I'm fine with keeping that out

    let mut total_processed = 0;
    patch.apply(old_dir, new_dir, &mut hash_iter, |bytes| {
        total_processed += bytes;
        let _ = sink.add(total_processed as i64);
    })?;

    Ok(())
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
