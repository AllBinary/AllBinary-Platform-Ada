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


with org.allbinary.input.motion.button.TouchScreenType_Package; use org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package_References;
with org.allbinary.input.motion.button.TouchScreenType_Package;

package body org.allbinary.input.motion.button.TouchScreenTypesFactory_Package is

   subtype TouchScreenType_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access;
   function "=" (Left, Right : TouchScreenType_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array;
   function "=" (Left, Right : TouchScreenType_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   procedure Initialize_Fields (This : in out TouchScreenTypesFactory'Class) is
   begin
      null;
      This.FINGER := TouchScreenType_Package.Create (To_Unbounded_String ("Finger"));
      This.NOTOUCH := TouchScreenType_Package.Create (To_Unbounded_String ("No Touch"));
      This.STYLUS := TouchScreenType_Package.Create (To_Unbounded_String ("Stylus"));
      This.UNDEFINED := TouchScreenType_Package.Create (To_Unbounded_String ("Undefined"));
   end Initialize_Fields;

   procedure Initialize (This : in out TouchScreenTypesFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchScreenTypesFactory_Access is
      This : constant TouchScreenTypesFactory_Access := new TouchScreenTypesFactory;
   begin
      TouchScreenTypesFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TouchScreenTypesFactory_Access is
   begin
        return TouchScreenTypesFactory_Access (TouchScreenTypesFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := TouchScreenTypesFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;


