--  Generated Code Do Not Modify


package body org.allbinary.animation.PolygonRasterizer_Package is

   procedure Initialize_Fields (This : in out PolygonRasterizer'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PolygonRasterizer'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PolygonRasterizer_Access is
      This : constant PolygonRasterizer_Access := new PolygonRasterizer;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PolygonRasterizer_Access is
   begin
        return PolygonRasterizer_Package.instance;
   end getInstance;

   function getPixelBuffer (This : in out PolygonRasterizer; svgPath : Unbounded_String; pathX : Integer_Array_Access; pathY : Integer_Array_Access; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer) return Integer_Array_Access is
      pointCount : Integer;
      i : Integer;
   begin
        pointCount := PathParser_Package.parsePath (svgPath, pathX, pathY, pathX'Length);
        for i in 0 .. (pixelBuffer'Length) - 1 loop
            pixelBuffer (i) := 16#FFFFFFFF#;
        end loop;
        PolygonRasterizer_Package.getInstance.fillPolygon (pathX, pathY, pointCount, pixelBuffer, width, height, 16#FFFF00FF#);
        return pixelBuffer;
   end getPixelBuffer;

   procedure fillPolygon (This : in out PolygonRasterizer; polyX : Integer_Array_Access; polyY : Integer_Array_Access; numPoints : Integer; buffer : Integer_Array_Access; width : Integer; height : Integer; colorRGB : Integer) is
      fixedPoint : FixedPoint_Access;
      x : Integer_Array_Access;
      y : Integer_Array_Access;
      minY : Integer;
      maxY : Integer;
      i : Integer;
      scanlineX : Integer_Array_Access;
      intersectCount : Integer;
      next : Integer;
      x1 : Integer;
      y1 : Integer;
      x2 : Integer;
      y2 : Integer;
      interX : Integer;
      temp : Integer;
      j : Integer;
      startX : Integer;
      endX : Integer;
      rowOffset : Integer;
      pixelX : Integer;
      scanY : Integer;
   begin
        if (numPoints) < (3) then
            return;
        end if;
        fixedPoint := FixedPoint_Package.getInstance;
        x := new Integer_Array'(0 .. (numPoints) - 1 => 0);
        y := new Integer_Array'(0 .. (numPoints) - 1 => 0);
        minY := height;
        maxY := 0;
        for i in 0 .. (numPoints) - 1 loop
            x (i) := fixedPoint.toInt (polyX (i));
            y (i) := fixedPoint.toInt (polyY (i));
            if (y (i)) < (minY) then
                minY := y (i);
            end if;
            if (y (i)) > (maxY) then
                maxY := y (i);
            end if;
        end loop;
        if (minY) < (0) then
            minY := 0;
        end if;
        if (maxY) >= (height) then
            maxY := (height) - (1);
        end if;
        scanlineX := new Integer_Array'(0 .. (numPoints) - 1 => 0);
        for scanY in minY .. maxY loop
            intersectCount := 0;
            for i in 0 .. (numPoints) - 1 loop
                next := (((i) + (1))) rem (numPoints);
                x1 := x (i);
                y1 := y (i);
                x2 := x (next);
                y2 := y (next);
                if ((((y1) < (scanY)) and then ((y2) >= (scanY)))) or else ((((y2) < (scanY)) and then ((y1) >= (scanY)))) then
                    if (y2) /= (y1) then
                        interX := (x1) + (((((scanY) - (y1))) * (((x2) - (x1)))) / (((y2) - (y1))));
                        scanlineX (Java_Post_Increment (intersectCount)) := interX;
                    end if;
                end if;
            end loop;
            for i in 0 .. ((intersectCount) - (1)) - 1 loop
                for j in (i) + (1) .. (intersectCount) - 1 loop
                    if (scanlineX (i)) > (scanlineX (j)) then
                        temp := scanlineX (i);
                        scanlineX (i) := scanlineX (j);
                        scanlineX (j) := temp;
                    end if;
                end loop;
            end loop;
            i := 0;
            while (i) < (intersectCount) loop
                if ((i) + (1)) >= (intersectCount) then
                    exit;
                end if;
                startX := scanlineX (i);
                endX := scanlineX ((i) + (1));
                if (startX) < (0) then
                    startX := 0;
                end if;
                if (endX) >= (width) then
                    endX := (width) - (1);
                end if;
                rowOffset := (scanY) * (width);
                for pixelX in startX .. endX loop
                    buffer ((rowOffset) + (pixelX)) := colorRGB;
                end loop;
                i := (i) + (2);
            end loop;
        end loop;
   end fillPolygon;

   procedure main (This : in out PolygonRasterizer; args : Unbounded_String_Array_Access) is
      width : Integer;
      height : Integer;
      pathX : Integer_Array_Access;
      pathY : Integer_Array_Access;
      pixelBuffer : Integer_Array_Access;
      svgPath : Unbounded_String;
   begin
        width := 100;
        height := 100;
        pathX := new Integer_Array'(0 .. (200) - 1 => 0);
        pathY := new Integer_Array'(0 .. (200) - 1 => 0);
        pixelBuffer := new Integer_Array'(0 .. ((width) * (height)) - 1 => 0);
        svgPath := To_Unbounded_String ("M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z");
        PolygonRasterizer_Package.getInstance.getPixelBuffer (svgPath, pathX, pathY, pixelBuffer, width, height);
   end main;

   procedure getInstance is
      Java_Result : constant PolygonRasterizer_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getPixelBuffer (This : in out PolygonRasterizer; svgPath : Unbounded_String; pathX : Integer_Array_Access; pathY : Integer_Array_Access; pixelBuffer : Integer_Array_Access; width : Integer; height : Integer) is
      Java_Result : constant Integer_Array_Access := PolygonRasterizer'Class (This).getPixelBuffer (svgPath, pathX, pathY, pixelBuffer, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPixelBuffer;

begin
   null;
   instance := PolygonRasterizer_Package.Create;

end org.allbinary.animation.PolygonRasterizer_Package;


