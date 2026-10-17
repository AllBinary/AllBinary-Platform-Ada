-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.graphics.font.UpdateMyFontProcessor_Package is

   procedure Initialize_Fields (This : in out UpdateMyFontProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateMyFontProcessor'Class; keyValueDrawCharArray : UpdateMyFontInterface_Access) is
   begin
      MyFontProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.updateMeasurementProcessor := keyValueDrawCharArray;
   end Initialize;

   function Create (keyValueDrawCharArray : UpdateMyFontInterface_Access) return UpdateMyFontProcessor_Access is
      This : constant UpdateMyFontProcessor_Access := new UpdateMyFontProcessor;
   begin
      Initialize (This.all, keyValueDrawCharArray);
      return This;
   end Create;

   procedure process (This : in out UpdateMyFontProcessor; graphics : Graphics_Access) is
   begin
        This.updateMeasurementProcessor.updateMeasurement (graphics);
   end process;

end org.allbinary.graphics.font.UpdateMyFontProcessor_Package;


