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


package body org.allbinary.media.image.analysis.ColorRange_Package is

   procedure Initialize_Fields (This : in out ColorRange'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ColorRange'Class) is
   begin
      Initialize_Fields (This);
        This.minRed := 0;
        This.maxRed := 0;
        This.minGreen := 0;
        This.maxGreen := 0;
        This.minBlue := 0;
        This.maxBlue := 0;
   end Initialize;

   function Create return ColorRange_Access is
      This : constant ColorRange_Access := new ColorRange;
   begin
      ColorRange_Package.Initialize (This.all);
      return This;
   end Create;

   function getMinRed (This : in out ColorRange) return Integer is
   begin
        return This.minRed;
   end getMinRed;

   procedure setMinRed (This : in out ColorRange; minRed : Integer) is
   begin
        This.minRed := minRed;
   end setMinRed;

   function getMaxRed (This : in out ColorRange) return Integer is
   begin
        return This.maxRed;
   end getMaxRed;

   procedure setMaxRed (This : in out ColorRange; maxRed : Integer) is
   begin
        This.maxRed := maxRed;
   end setMaxRed;

   function getMinGreen (This : in out ColorRange) return Integer is
   begin
        return This.minGreen;
   end getMinGreen;

   procedure setMinGreen (This : in out ColorRange; minGreen : Integer) is
   begin
        This.minGreen := minGreen;
   end setMinGreen;

   function getMaxGreen (This : in out ColorRange) return Integer is
   begin
        return This.maxGreen;
   end getMaxGreen;

   procedure setMaxGreen (This : in out ColorRange; maxGreen : Integer) is
   begin
        This.maxGreen := maxGreen;
   end setMaxGreen;

   function getMinBlue (This : in out ColorRange) return Integer is
   begin
        return This.minBlue;
   end getMinBlue;

   procedure setMinBlue (This : in out ColorRange; minBlue : Integer) is
   begin
        This.minBlue := minBlue;
   end setMinBlue;

   function getMaxBlue (This : in out ColorRange) return Integer is
   begin
        return This.maxBlue;
   end getMaxBlue;

   procedure setMaxBlue (This : in out ColorRange; maxBlue : Integer) is
   begin
        This.maxBlue := maxBlue;
   end setMaxBlue;

   function isInRange (This : in out ColorRange; color_Param : access Color'Class) return Boolean is
      color : Color_Access := Color_Access (color_Param);
   begin
        if ((((((color.getRed) >= (This.getMinRed)) and then ((color.getRed) <= (This.getMaxRed))) and then ((color.getGreen) >= (This.getMinGreen))) and then ((color.getGreen) <= (This.getMaxGreen))) and then ((color.getBlue) >= (This.getMinBlue))) and then ((color.getBlue) <= (This.getMaxBlue)) then
            return True;
        else
            return False;
        end if;
   end isInRange;

   function toString (This : in out ColorRange) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("getMinRed(): "));
        stringBuffer.appendint (This.getMinRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxRed(): "));
        stringBuffer.appendint (This.getMaxRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMinGreen(): "));
        stringBuffer.appendint (This.getMinGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxGreen(): "));
        stringBuffer.appendint (This.getMaxGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMinBlue(): "));
        stringBuffer.appendint (This.getMinGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxBlue(): "));
        stringBuffer.appendint (This.getMaxBlue);
        return stringBuffer.toString;
   end toString;

   procedure isInRange (This : in out ColorRange; color_Param : access Color'Class) is
      Java_Result : constant Boolean := ColorRange'Class (This).isInRange (color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInRange;

end org.allbinary.media.image.analysis.ColorRange_Package;


