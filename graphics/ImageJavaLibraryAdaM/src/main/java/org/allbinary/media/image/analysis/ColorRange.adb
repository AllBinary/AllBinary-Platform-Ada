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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.media.image.analysis.ColorRange_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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

   function isInRange (This : in out ColorRange; color_Param : access Color_Package.Color'Class) return Boolean is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        if ((((((color.getRed) >= (ColorRange'Class (This).getMinRed)) and then ((color.getRed) <= (ColorRange'Class (This).getMaxRed))) and then ((color.getGreen) >= (ColorRange'Class (This).getMinGreen))) and then ((color.getGreen) <= (ColorRange'Class (This).getMaxGreen))) and then ((color.getBlue) >= (ColorRange'Class (This).getMinBlue))) and then ((color.getBlue) <= (ColorRange'Class (This).getMaxBlue)) then
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
        stringBuffer.appendint (ColorRange'Class (This).getMinRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxRed(): "));
        stringBuffer.appendint (ColorRange'Class (This).getMaxRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMinGreen(): "));
        stringBuffer.appendint (ColorRange'Class (This).getMinGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxGreen(): "));
        stringBuffer.appendint (ColorRange'Class (This).getMaxGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMinBlue(): "));
        stringBuffer.appendint (ColorRange'Class (This).getMinGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getMaxBlue(): "));
        stringBuffer.appendint (ColorRange'Class (This).getMaxBlue);
        return stringBuffer.toString;
   end toString;

   procedure isInRange (This : in out ColorRange; color_Param : access Color_Package.Color'Class) is
      Java_Result : constant Boolean := ColorRange'Class (This).isInRange (color_Param => color_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInRange;

end org.allbinary.media.image.analysis.ColorRange_Package;


