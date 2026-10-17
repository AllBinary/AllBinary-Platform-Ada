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


package body org.allbinary.input.automation.module.game.MeteredGameObject_Package is

   procedure Initialize_Fields (This : in out MeteredGameObject'Class) is
   begin
      null;
      This.ratios := null;
      This.good := False;
      This.dropping := False;
      This.minX := null;
      This.maxX := null;
      This.y := null;
      This.size := null;
      This.RATIOS_LABEL := To_Unbounded_String ("Ratios: ");
      This.IS_GOOD_LABEL := To_Unbounded_String ("isGood: ");
      This.IS_DROPPPING_LABEL := To_Unbounded_String ("isDropping: ");
   end Initialize_Fields;


   procedure Initialize (This : in out MeteredGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) is
      nominator : Long_Float;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.setRatios (new Long_Float_Array'(0 .. (bufferedImage'Length) - 1 => null));
        This.setMinX (minX);
        This.setMaxX (maxX);
        This.setY (y);
        This.setSize ((maxX) - (minX));
        for index in 0 .. (bufferedImage'Length) - 1 loop
            nominator := GraphicsAnalysisUtil_Package.getNominator (bufferedImage (index), This.getMinX, This.getMaxX, This.getY);
            This.getRatios (index) := (nominator) / (This.getSize);
        end loop;
        if (This.getRatios ((bufferedImage'Length) - (1)).doubleValue) > (0.93) then
            This.setGood (True);
        else
            This.setGood (False);
        end if;
        if (This.getRatios ((bufferedImage'Length) - (1)).doubleValue) < (This.getRatios (0).doubleValue) then
            This.setDropping (True);
        else
            This.setDropping (False);
        end if;
   end Initialize;

   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return MeteredGameObject_Access is
      This : constant MeteredGameObject_Access := new MeteredGameObject;
   begin
      Initialize (This.all, bufferedImage, minX, maxX, y);
      return This;
   end Create;

   function isGood (This : in out MeteredGameObject) return Boolean is
   begin
        return This.good;
   end isGood;

   procedure setGood (This : in out MeteredGameObject; good : Boolean) is
   begin
        This.good := good;
   end setGood;

   function isDropping (This : in out MeteredGameObject) return Boolean is
   begin
        return This.dropping;
   end isDropping;

   procedure setDropping (This : in out MeteredGameObject; dropping : Boolean) is
   begin
        This.dropping := dropping;
   end setDropping;

   function getRatios (This : in out MeteredGameObject) return Long_Float_Array_Access is
   begin
        return This.ratios;
   end getRatios;

   function toString (This : in out MeteredGameObject) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.RATIOS_LABEL);
        for index in 0 .. (This.getRatios'Length) - 1 loop
            stringBuffer.append (This.getRatios (index).toString);
            if (index) < ((This.getRatios'Length) - (1)) then
                stringBuffer.append (commonSeps.COMMA_SEP);
            end if;
        end loop;
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.IS_GOOD_LABEL);
        stringBuffer.appendboolean (This.isGood);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.IS_DROPPPING_LABEL);
        stringBuffer.appendboolean (This.isDropping);
        return stringBuffer.toString;
   end toString;

   procedure setRatios (This : in out MeteredGameObject; ratios : Long_Float_Array_Access) is
   begin
        This.ratios := ratios;
   end setRatios;

   function getMinX (This : in out MeteredGameObject) return Integer is
   begin
        return This.minX;
   end getMinX;

   procedure setMinX (This : in out MeteredGameObject; minX : Integer) is
   begin
        This.minX := minX;
   end setMinX;

   function getMaxX (This : in out MeteredGameObject) return Integer is
   begin
        return This.maxX;
   end getMaxX;

   procedure setMaxX (This : in out MeteredGameObject; maxX : Integer) is
   begin
        This.maxX := maxX;
   end setMaxX;

   function getY (This : in out MeteredGameObject) return Integer is
   begin
        return This.y;
   end getY;

   procedure setY (This : in out MeteredGameObject; y : Integer) is
   begin
        This.y := y;
   end setY;

   function getSize (This : in out MeteredGameObject) return Integer is
   begin
        return This.size;
   end getSize;

   procedure setSize (This : in out MeteredGameObject; size : Integer) is
   begin
        This.size := size;
   end setSize;

   procedure isGood (This : in out MeteredGameObject) is
      Java_Result : constant Boolean := MeteredGameObject'Class (This).isGood;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGood;

   procedure isDropping (This : in out MeteredGameObject) is
      Java_Result : constant Boolean := MeteredGameObject'Class (This).isDropping;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDropping;

   procedure getRatios (This : in out MeteredGameObject) is
      Java_Result : constant Long_Float_Array_Access := MeteredGameObject'Class (This).getRatios;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRatios;

   procedure toString (This : in out MeteredGameObject) is
      Java_Result : constant Unbounded_String := MeteredGameObject'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getMinX (This : in out MeteredGameObject) is
      Java_Result : constant Integer := MeteredGameObject'Class (This).getMinX;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMinX;

   procedure getMaxX (This : in out MeteredGameObject) is
      Java_Result : constant Integer := MeteredGameObject'Class (This).getMaxX;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxX;

   procedure getY (This : in out MeteredGameObject) is
      Java_Result : constant Integer := MeteredGameObject'Class (This).getY;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getY;

   procedure getSize (This : in out MeteredGameObject) is
      Java_Result : constant Integer := MeteredGameObject'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

end org.allbinary.input.automation.module.game.MeteredGameObject_Package;


