--  Generated Code Do Not Modify


package body org.allbinary.animation.PathParser_Package is

   procedure Initialize_Fields (This : in out PathParser'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PathParser'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PathParser_Access is
      This : constant PathParser_Access := new PathParser;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function tokenize (d : Unbounded_String) return Unbounded_String_Array_Access is
      tokens : BasicArrayList_Access;
      sb : Unbounded_String;
      c : Character;
      i : Integer;
      res : Unbounded_String_Array_Access;
   begin
        tokens := BasicArrayListD_Package.Create;
        sb := StringBuffer_Package.Create;
        for i in 0 .. (Length (d)) - 1 loop
            c := Element (d, (i) + 1);
            if (((((c) = (' ')) or else ((c) = (','))) or else ((c) = (ASCII.HT))) or else ((c) = (ASCII.LF))) or else ((c) = (ASCII.CR)) then
                if (sb.length) > (0) then
                    tokens.add (sb.toString);
                    sb.setLength (0);
                end if;
            elsif ((((((((((c) = ('M')) or else ((c) = ('m'))) or else ((c) = ('L'))) or else ((c) = ('l'))) or else ((c) = ('V'))) or else ((c) = ('v'))) or else ((c) = ('C'))) or else ((c) = ('c'))) or else ((c) = ('Z'))) or else ((c) = ('z')) then
                if (sb.length) > (0) then
                    tokens.add (sb.toString);
                    sb.setLength (0);
                end if;
                tokens.add (To_Unbounded_String (Java_Image (c)));
            else
                sb.append (c);
            end if;
        end loop;
        if (sb.length) > (0) then
            tokens.add (sb.toString);
        end if;
        res := new Unbounded_String_Array'(0 .. (tokens.size) - 1 => Null_Unbounded_String);
        tokens.toArrayType (res);
        return res;
   end tokenize;

   function parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer) return Integer is
      tokens : Unbounded_String_Array_Access;
      count : Integer_Array_Access;
      fixedPoint : FixedPoint_Access;
      curX : Integer;
      curY : Integer;
      startX : Integer;
      startY : Integer;
      idx : Integer;
      tok : Unbounded_String;
      cmd : Character;
      x1 : Integer;
      y1 : Integer;
      x2 : Integer;
      y2 : Integer;
      x3 : Integer;
      y3 : Integer;
      y : Integer;
      x : Integer;
   begin
        tokens := tokenize (d);
        count := new Integer_Array'(0 => 0);
        fixedPoint := FixedPoint_Package.getInstance;
        curX := 0;
        curY := 0;
        startX := 0;
        startY := 0;
        idx := 0;
        while (idx) < (tokens'Length) loop
            tok := tokens (Java_Post_Increment (idx));
            cmd := Element (tok, (0) + 1);
            if ((cmd) = ('M')) or else ((cmd) = ('m')) then
                x := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                y := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                if (cmd) = ('m') then
                    x := (x) + (curX);
                    y := (y) + (curY);
                end if;
                curX := x;
                curY := y;
                startX := x;
                startY := y;
                outX (count (0)) := curX;
                outY (count (0)) := curY;
                count (0) := count (0) + 1;
            elsif ((cmd) = ('L')) or else ((cmd) = ('l')) then
                x := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                y := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                if (cmd) = ('l') then
                    x := (x) + (curX);
                    y := (y) + (curY);
                end if;
                curX := x;
                curY := y;
                outX (count (0)) := curX;
                outY (count (0)) := curY;
                count (0) := count (0) + 1;
            elsif ((cmd) = ('V')) or else ((cmd) = ('v')) then
                y := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                if (cmd) = ('v') then
                    y := (y) + (curY);
                end if;
                curY := y;
                outX (count (0)) := curX;
                outY (count (0)) := curY;
                count (0) := count (0) + 1;
            elsif ((cmd) = ('C')) or else ((cmd) = ('c')) then
                x1 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                y1 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                x2 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                y2 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                x3 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                y3 := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                if (cmd) = ('c') then
                    x1 := (x1) + (curX);
                    y1 := (y1) + (curY);
                    x2 := (x2) + (curX);
                    y2 := (y2) + (curY);
                    x3 := (x3) + (curX);
                    y3 := (y3) + (curY);
                end if;
                PGUtil_Package.getInstance.flattenCubicBezier (curX, curY, x1, y1, x2, y2, x3, y3, outX, outY, count, maxPoints);
                curX := x3;
                curY := y3;
            elsif ((cmd) = ('Z')) or else ((cmd) = ('z')) then
                curX := startX;
                curY := startY;
                outX (count (0)) := curX;
                outY (count (0)) := curY;
                count (0) := count (0) + 1;
            end if;
            while ((idx) < (tokens'Length)) and then (not (isCommand (tokens (idx)))) loop
                if ((((cmd) = ('M')) or else ((cmd) = ('m'))) or else ((cmd) = ('L'))) or else ((cmd) = ('l')) then
                    x := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                    y := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                    if ((cmd) = ('m')) or else ((cmd) = ('l')) then
                        x := (x) + (curX);
                        y := (y) + (curY);
                    end if;
                    curX := x;
                    curY := y;
                    outX (count (0)) := curX;
                    outY (count (0)) := curY;
                    count (0) := count (0) + 1;
                elsif ((cmd) = ('V')) or else ((cmd) = ('v')) then
                    y := fixedPoint.toFixed (Long_Float'Value (To_String (tokens (Java_Post_Increment (idx)))));
                    if (cmd) = ('v') then
                        y := (y) + (curY);
                    end if;
                    curY := y;
                    outX (count (0)) := curX;
                    outY (count (0)) := curY;
                    count (0) := count (0) + 1;
                end if;
            end loop;
        end loop;
        return count (0);
   end parsePath;

   function isCommand (tok : Unbounded_String) return Boolean is
      c : Character;
   begin
        c := Element (tok, (0) + 1);
        return ((Index (To_Unbounded_String ("MmLlVvCcZz"), To_String (c)) - 1)) >= (0);
   end isCommand;

   procedure tokenize (d : Unbounded_String) is
      Java_Result : constant Unbounded_String_Array_Access := tokenize (d);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end tokenize;

   procedure parsePath (d : Unbounded_String; outX : Integer_Array_Access; outY : Integer_Array_Access; maxPoints : Integer) is
      Java_Result : constant Integer := parsePath (d, outX, outY, maxPoints);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end parsePath;

   procedure isCommand (tok : Unbounded_String) is
      Java_Result : constant Boolean := isCommand (tok);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isCommand;

end org.allbinary.animation.PathParser_Package;


