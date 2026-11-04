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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package body org.allbinary.graphics.font.UpdateMyFontProcessor_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype UpdateMyFontInterface_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   procedure Initialize_Fields (This : in out UpdateMyFontProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UpdateMyFontProcessor'Class; keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class) is
      keyValueDrawCharArray : constant UpdateMyFontInterface_Access := UpdateMyFontInterface_Access (keyValueDrawCharArray_Param);
   begin
      MyFontProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.updateMeasurementProcessor := keyValueDrawCharArray;
   end Initialize;

   function Create (keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class) return UpdateMyFontProcessor_Access is
      This : constant UpdateMyFontProcessor_Access := new UpdateMyFontProcessor;
   begin
      UpdateMyFontProcessor_Package.Initialize (This.all, keyValueDrawCharArray_Param);
      return This;
   end Create;

   procedure process (This : in out UpdateMyFontProcessor; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.updateMeasurementProcessor.updateMeasurement (graphics);
   end process;

end org.allbinary.graphics.font.UpdateMyFontProcessor_Package;


