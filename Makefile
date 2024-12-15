default:
	windres ./tfs.rc -O coff -o ./tfs.res
	gcc ./src/app.c ./tfs.res -o ./out/app.exe -lopengl32 -lgdi32 -lglew32
	rm ./tfs.res
	./out/app.exe
export_app:
	windres ./tfs.rc -O coff -o ./tfs.res
	gcc ./src/app.c ./tfs.res -o ./out/app.exe -lopengl32 -lgdi32 -lglew32 -DEXPORT_APP -flto -O3 -Os -static-libgcc -mwindows
	rm ./tfs.res
	./out/app.exe