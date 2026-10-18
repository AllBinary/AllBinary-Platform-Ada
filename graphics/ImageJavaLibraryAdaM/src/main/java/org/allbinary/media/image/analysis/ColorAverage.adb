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

package body org.allbinary.media.image.analysis.ColorAverage_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out ColorAverage'Class) is
   begin
      null;
      This.avgRed := 0.0;
      This.avgGreen := 0.0;
      This.avgBlue := 0.0;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorAverage'Class) is
   begin
      Initialize_Fields (This);
        ColorAverage'Class (This).setAvgRed (0);
        ColorAverage'Class (This).setAvgGreen (0);
        ColorAverage'Class (This).setAvgBlue (0);
   end Initialize;

   function Create return ColorAverage_Access is
      This : constant ColorAverage_Access := new ColorAverage;
   begin
      ColorAverage_Package.Initialize (This.all);
      return This;
   end Create;

   function toString (This : in out ColorAverage) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("getAvgRed(): "));
        stringBuffer.appendfloat (ColorAverage'Class (This).getAvgRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getAvgRed(): "));
        stringBuffer.appendfloat (ColorAverage'Class (This).getAvgRed);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("getAvgGreen(): "));
        stringBuffer.appendfloat (ColorAverage'Class (This).getAvgGreen);
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        return stringBuffer.toString;
   end toString;

   function getAvgRed (This : in out ColorAverage) return Float is
   begin
        return This.avgRed;
   end getAvgRed;

   procedure setAvgRed (This : in out ColorAverage; avgRed : Float) is
   begin
        This.avgRed := avgRed;
   end setAvgRed;

   function getAvgGreen (This : in out ColorAverage) return Float is
   begin
        return This.avgGreen;
   end getAvgGreen;

   procedure setAvgGreen (This : in out ColorAverage; avgGreen : Float) is
   begin
        This.avgGreen := avgGreen;
   end setAvgGreen;

   function getAvgBlue (This : in out ColorAverage) return Float is
   begin
        return This.avgBlue;
   end getAvgBlue;

   procedure setAvgBlue (This : in out ColorAverage; avgBlue : Float) is
   begin
        This.avgBlue := avgBlue;
   end setAvgBlue;

end org.allbinary.media.image.analysis.ColorAverage_Package;


