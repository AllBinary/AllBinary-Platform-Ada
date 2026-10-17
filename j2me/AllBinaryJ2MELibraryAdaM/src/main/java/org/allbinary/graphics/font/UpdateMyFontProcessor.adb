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


   procedure Initialize (This : in out UpdateMyFontProcessor'Class; keyValueDrawCharArray_Param : access UpdateMyFontInterface'Class) is
      keyValueDrawCharArray : UpdateMyFontInterface_Access := UpdateMyFontInterface_Access (keyValueDrawCharArray_Param);
   begin
      MyFontProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.updateMeasurementProcessor := keyValueDrawCharArray;
   end Initialize;

   function Create (keyValueDrawCharArray_Param : access UpdateMyFontInterface'Class) return UpdateMyFontProcessor_Access is
      This : constant UpdateMyFontProcessor_Access := new UpdateMyFontProcessor;
   begin
      UpdateMyFontProcessor_Package.Initialize (This.all, keyValueDrawCharArray_Param);
      return This;
   end Create;

   procedure process (This : in out UpdateMyFontProcessor; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.updateMeasurementProcessor.updateMeasurement (graphics);
   end process;

end org.allbinary.graphics.font.UpdateMyFontProcessor_Package;


