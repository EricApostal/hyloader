use std::fs::File;
use std::io::BufReader;
use std::path::Path;

use wharf::{Patch, Signature};

pub fn patch_wharf(
    patch_path: &str,
    sig_path: &str,
    old_dir: &Path,
    new_dir: &Path,
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

    patch.apply(old_dir, new_dir, &mut hash_iter, |bytes| {
        println!("Patched {} bytes", bytes);
    })?;

    Ok(())
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
