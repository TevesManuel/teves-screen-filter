default:
	gcc ./src/app.c -o ./out/app.exe -lopengl32 -lgdi32 -lglew32 -mwindows
	./out/app.exe