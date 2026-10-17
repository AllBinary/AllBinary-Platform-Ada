--  Generated Code Do Not Modify


package body org.allbinary.animation.PGUtil_Package is

   procedure Initialize_Fields (This : in out PGUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PGUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PGUtil_Access is
      This : constant PGUtil_Access := new PGUtil;
   begin
      PGUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PGUtil_Access is
   begin
        return PGUtil_Package.instance;
   end getInstance;

   procedure flattenCubicBezier (This : in out PGUtil; x0 : Integer; y0 : Integer; x1 : Integer; y1 : Integer; x2 : Integer; y2 : Integer; x3 : Integer; y3 : Integer; outX : Integer_Array_Access; outY : Integer_Array_Access; count : Integer_Array_Access; maxPoints : Integer) is
      fixedPoint : FixedPoint_Access;
      steps : Integer;
      t : Integer;
      mt : Integer;
      mt3 : Integer;
      mt2t3 : Integer;
      mtt23 : Integer;
      t3 : Integer;
      x : Integer;
      y : Integer;
      i : Integer;
   begin
        fixedPoint := FixedPoint_Package.getInstance;
        steps := 10;
        for i in 1 .. steps loop
            t := fixedPoint.div (fixedPoint.toFixed (Long_Float (i)), fixedPoint.toFixed (steps));
            mt := (fixedPoint.ONE) - (t);
            mt3 := fixedPoint.mul (fixedPoint.mul (mt, mt), mt);
            mt2t3 := (3) * (fixedPoint.mul (fixedPoint.mul (mt, mt), t));
            mtt23 := (3) * (fixedPoint.mul (fixedPoint.mul (mt, t), t));
            t3 := fixedPoint.mul (fixedPoint.mul (t, t), t);
            x := (((fixedPoint.mul (mt3, x0)) + (fixedPoint.mul (mt2t3, x1))) + (fixedPoint.mul (mtt23, x2))) + (fixedPoint.mul (t3, x3));
            y := (((fixedPoint.mul (mt3, y0)) + (fixedPoint.mul (mt2t3, y1))) + (fixedPoint.mul (mtt23, y2))) + (fixedPoint.mul (t3, y3));
            if (count (0)) < (maxPoints) then
                outX (count (0)) := x;
                outY (count (0)) := y;
                count (0) := count (0) + 1;
            end if;
        end loop;
   end flattenCubicBezier;

begin
   null;
   instance := PGUtil_Package.Create;

end org.allbinary.animation.PGUtil_Package;


