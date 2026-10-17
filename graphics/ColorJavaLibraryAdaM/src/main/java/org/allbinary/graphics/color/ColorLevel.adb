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


package body org.allbinary.graphics.color.ColorLevel_Package is

   procedure Initialize_Fields (This : in out ColorLevel'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorLevel'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorLevel_Access is
      This : constant ColorLevel_Access := new ColorLevel;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   COLOR_MASK := 16#00FFFFFF#;
   MIN := 16#44#;
   AVG := 16#77#;
   LIGHT := 16#AA#;
   HIGH := 16#EE#;

end org.allbinary.graphics.color.ColorLevel_Package;


