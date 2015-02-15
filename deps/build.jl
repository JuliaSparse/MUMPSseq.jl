using BinDeps

@BinDeps.setup

libdmumps_seq = library_dependency("libdmumps_seq", aliases=["libdmumps"])

@linux_only begin
    provides(AptGet, "libmumps-seq-dev", libdmumps_seq)
#    provides(Yum, "MUMPS-4.10.0", libdmumps)
end

@windows_only begin
    using WinRPM
    provides(WinRPM.RPM, "mumps", libdmumps_seq, os = :Windows)
end

## @osx_only begin
##     using Homebrew
##     provides( Homebrew.HB, "mumps", dmumps, os = :Darwin )
## end

provides(Sources, URI("http://ftp.debian.org/debian/pool/main/m/mumps/mumps_4.10.0.dfsg.orig.tar.gz"), libdmumps_seq)

@BinDeps.install
