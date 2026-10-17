-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.media.ScaleProperties_Package is

   procedure Initialize_Fields (This : in out ScaleProperties'Class) is
   begin
      null;
      This.scaleX := 0.0;
      This.scaleY := 0.0;
      This.scaleWidth := 0;
      This.scaleHeight := 0;
      This.shouldScale := False;
   end Initialize_Fields;

   procedure Initialize (This : in out ScaleProperties'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScaleProperties_Access is
      This : constant ScaleProperties_Access := new ScaleProperties;
   begin
      ScaleProperties_Package.Initialize (This.all);
      return This;
   end Create;


   function toString (This : in out ScaleProperties) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (CommonLabels_Package.getInstance.COLON_SEP).appendboolean (This.shouldScale).append (To_Unbounded_String ("scaleX: ")).appendfloat (This.scaleX).append (To_Unbounded_String ("scaleY: ")).appendfloat (This.scaleY).append (To_Unbounded_String ("scaleWidth: ")).appendint (This.scaleWidth).append (To_Unbounded_String ("scaleHeight: ")).appendint (This.scaleHeight).toString;
   end toString;

begin
   null;
   instance := ScaleProperties_Package.Create;

end org.allbinary.media.ScaleProperties_Package;


