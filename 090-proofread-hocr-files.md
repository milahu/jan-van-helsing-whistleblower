TODO find a good hocr-editor

- [gImageReader](https://github.com/manisandro/gImageReader) is missing some features
- [scribeocr](https://github.com/scribeocr/scribeocr) produces broken hocr files
with [new words inserted at random positions](https://github.com/scribeocr/scribeocr/issues/82)
- [editing hocr files via temporary svg files in inkscape](https://github.com/internetarchive/archive-hocr-tools/pull/23) is... not ideal
but this could be fixed with little effort (inkscape does most of the work)
- [hocrjs](https://github.com/kba/c) cannot [add new words](https://github.com/kba/hocrjs/issues/71), cannot [edit bbox positions](https://github.com/kba/hocrjs/issues/72)
- [hocr-proofreader](https://github.com/not-implemented/hocr-proofreader) cannot add new words, cannot edit bbox positions
- [hocr-editor-ts](https://github.com/milahu/hocr-editor-ts) is just an early draft (broken)
- [HocrEditor](https://github.com/GeReV/HocrEditor) is windows-only because the dependencies are so old
that the runtime requires dotnet6.0 which has [no desktop runtime for linux](https://dotnet.microsoft.com/en-us/download/dotnet/6.0/runtime)
