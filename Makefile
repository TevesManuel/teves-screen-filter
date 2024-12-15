default:
	windres ./tfs.rc -O coff -o ./tfs.res
	gcc ./src/app.c ./tfs.res -o ./out/app.exe -lopengl32 -lgdi32 -lglew32 -ldwmapi
	rm ./tfs.res
	./out/app.exe