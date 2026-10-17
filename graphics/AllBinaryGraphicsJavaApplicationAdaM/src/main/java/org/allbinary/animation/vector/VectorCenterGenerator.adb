--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.animation.vector.VectorCenterGenerator_Package is

   procedure Initialize_Fields (This : in out VectorCenterGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.minX := Integer_Package.MAX_VALUE;
      This.minY := Integer_Package.MAX_VALUE;
      This.maxX := Integer_Package.MIN_VALUE;
      This.maxY := Integer_Package.MIN_VALUE;
      This.dx := 0;
      This.dy := 0;
      This.width := 0;
      This.height := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorCenterGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorCenterGenerator_Access is
      This : constant VectorCenterGenerator_Access := new VectorCenterGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure calculate (This : in out VectorCenterGenerator; hashMap : HashMap_Access) is
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      index : Integer;
      max : Integer;
      middle : Integer;
      commonLabels : CommonLabels_Access;
      s : Unbounded_String;
      currentMiddleX : Integer;
      currentMiddleY : Integer;
   begin
        graphicItemArray := hashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (hashMap.get (graphicItemArray (index)));
            if (item.getName) = (LinesGraphicItem_Package.getStaticName) then
                This.getInstance (item.getPointsInterface.getPoints);
            end if;
        end loop;
        This.logUtil.putF (To_Unbounded_String ("minX: ") & Java_Image (This.minX) & To_Unbounded_String (" minY: ") & Java_Image (This.minY) & To_Unbounded_String (" maxX: ") & Java_Image (This.maxX) & To_Unbounded_String (" maxY: ") & Java_Image (This.maxY), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
        This.setWidth ((This.maxX) - (This.minX));
        This.setHeight ((This.maxY) - (This.minY));
        max := This.getWidth;
        if (This.getHeight) > (max) then
            max := This.getHeight;
        end if;
        middle := (max) / (2);
        commonLabels := CommonLabels_Package.getInstance;
        s := StringMaker_Package.Create.append (commonLabels.WIDTH_LABEL).appendint (This.getWidth).append (commonLabels.HEIGHT_LABEL).appendint (This.getHeight).append (To_Unbounded_String (" max: ")).appendint (max).append (To_Unbounded_String (" middle: ")).appendint (middle).toString;
        This.logUtil.putF (s, This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
        currentMiddleX := (This.minX) + ((This.getWidth) / (2));
        currentMiddleY := (This.minY) + ((This.getHeight) / (2));
        This.dx := (middle) - (currentMiddleX);
        This.dy := (middle) - (currentMiddleY);
   end calculate;

   --  throws Exception
   procedure transform (This : in out VectorCenterGenerator; hashMap : HashMap_Access) is
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      list : BasicArrayList_Access;
      newPoints : Points_Access;
      index : Integer;
   begin
        This.calculate (hashMap);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String (" dx: ")).appendint (This.dx).append (To_Unbounded_String (" dy: ")).appendint (This.dy).toString, This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
        graphicItemArray := hashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (hashMap.get (graphicItemArray (index)));
            list := VectorCenterGenerator_Package.translate (item.getPointsInterface.getPoints, This.dx, This.dy);
            newPoints := Points_Package.Create;
            newPoints.addPoints (list);
            item.setPointsInterface (newPoints);
        end loop;
   end transform;

   --  throws Exception
   procedure getInstance (This : in out VectorCenterGenerator; pointVector : BasicArrayList_Access) is
      size : Integer;
      point : GPoint_Access;
      index : Integer;
   begin
        begin
            size := pointVector.size;
            for index in 0 .. (size) - 1 loop
                point := GPoint_Access (pointVector.get (index));
                if (point.getX) < (This.minX) then
                    This.minX := point.getX;
                end if;
                if (point.getX) > (This.maxX) then
                    This.maxX := point.getX;
                end if;
                if (point.getY) < (This.minY) then
                    This.minY := point.getY;
                end if;
                if (point.getY) > (This.maxY) then
                    This.maxY := point.getY;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.GET_INSTANCE, e);
            Java_Throw (e);
                end;
        end;
   end getInstance;

   --  throws Exception
   function translate (list : BasicArrayList_Access; x : Integer; y : Integer) return BasicArrayList_Access is
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (list);
        graphicsPipe.createMatrix;
        graphicsPipe.translate (x, y);
        return graphicsPipe.getMatrix;
   end translate;

   function getWidth (This : in out VectorCenterGenerator) return Integer is
   begin
        return This.width;
   end getWidth;

   procedure setWidth (This : in out VectorCenterGenerator; width : Integer) is
   begin
        This.width := width;
   end setWidth;

   function getHeight (This : in out VectorCenterGenerator) return Integer is
   begin
        return This.height;
   end getHeight;

   procedure setHeight (This : in out VectorCenterGenerator; height : Integer) is
   begin
        This.height := height;
   end setHeight;

   procedure translate (list : BasicArrayList_Access; x : Integer; y : Integer) is
      Java_Result : constant BasicArrayList_Access := translate (list, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

   procedure getWidth (This : in out VectorCenterGenerator) is
      Java_Result : constant Integer := VectorCenterGenerator'Class (This).getWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out VectorCenterGenerator) is
      Java_Result : constant Integer := VectorCenterGenerator'Class (This).getHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

end org.allbinary.animation.vector.VectorCenterGenerator_Package;


