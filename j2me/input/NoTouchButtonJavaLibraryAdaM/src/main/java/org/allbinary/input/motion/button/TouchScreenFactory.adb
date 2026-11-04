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


with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package; use org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package; use org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package_References;
with org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;

package body org.allbinary.input.motion.button.TouchScreenFactory_Package is

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
   procedure Initialize_Fields (This : in out TouchScreenFactory'Class) is
   begin
      null;
      This.multiTouch := False;
      This.touch := False;
      This.touchScreenType := TouchScreenType_Access (TouchScreenTypesFactory_Package.getInstance.NOTOUCH);
   end Initialize_Fields;


   procedure Initialize (This : in out TouchScreenFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchScreenFactory_Access is
      This : constant TouchScreenFactory_Access := new TouchScreenFactory;
   begin
      TouchScreenFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return TouchScreenFactory_Access is
   begin
        return TouchScreenFactory_Access (TouchScreenFactory_Package.SINGLETON);
   end getInstance;

   function isMultiTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.multiTouch;
   end isMultiTouch;

   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean) is
   begin
        null;
   end setTouch;

   function isTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.touch;
   end isTouch;

   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access is
   begin
        return This.touchScreenType;
   end getTouchScreenType;

begin
   null;
   SINGLETON := TouchScreenFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


