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

with AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerFactory_Package;
package org.allbinary.layer.AllBinaryLayerFactory_Package_References is
   type AllBinaryLayerFactory_Access is access all org.allbinary.layer.AllBinaryLayerFactory_Package.AllBinaryLayerFactory'Class;
   type AllBinaryLayerFactory_Access_Array is array (Natural range <>) of AllBinaryLayerFactory_Access;
   type AllBinaryLayerFactory_Access_Array_Access is access all AllBinaryLayerFactory_Access_Array;
   type AllBinaryLayerFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryLayerFactory_Access_Array_Access;
   type AllBinaryLayerFactory_Access_Array_Access_Array_Access is access all AllBinaryLayerFactory_Access_Array_Access_Array;
   type AllBinaryLayerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayerFactory_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayerFactory_Access_Array_Object'Class then AllBinaryLayerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryLayerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryLayerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryLayerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryLayerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryLayerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryLayerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryLayerFactory_Access_Array_Access_Array_Object'Class then AllBinaryLayerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.layer.AllBinaryLayerFactory_Package_References;

with org.allbinary.layer.AllBinaryLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.AllBinaryLayerFactory_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryLayerFactory_Access is org.allbinary.layer.AllBinaryLayerFactory_Package_References.AllBinaryLayerFactory_Access;
   function "=" (Left, Right : AllBinaryLayerFactory_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactory_Package_References."=";
   subtype AllBinaryLayerFactory_Access_Array is org.allbinary.layer.AllBinaryLayerFactory_Package_References.AllBinaryLayerFactory_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactory_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactory_Package_References."=";
   subtype AllBinaryLayerFactory_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactory_Package_References.AllBinaryLayerFactory_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactory_Package_References."=";
   function Java_Box (Value : AllBinaryLayerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayerFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayerFactory_Access_Array (Value : access Java_Object'Class) return AllBinaryLayerFactory_Access_Array_Access renames org.allbinary.layer.AllBinaryLayerFactory_Package_References.Java_Unbox_AllBinaryLayerFactory_Access_Array;
   subtype AllBinaryLayerFactory_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactory_Package_References.AllBinaryLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerFactory_Package_References."=";
   subtype AllBinaryLayerFactory_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactory_Package_References.AllBinaryLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerFactory_Package_References."=";
   function Java_Box (Value : AllBinaryLayerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.layer.AllBinaryLayerFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryLayerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryLayerFactory_Access_Array_Access_Array_Access renames org.allbinary.layer.AllBinaryLayerFactory_Package_References.Java_Unbox_AllBinaryLayerFactory_Access_Array_Access_Array;

   type AllBinaryLayerFactory is new Java_Object and AllBinaryLayerFactoryInterface with record
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out AllBinaryLayerFactory'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return AllBinaryLayerFactory_Access;
   function getInstance (This : in out AllBinaryLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.layer.AllBinaryLayerFactory_Package;


