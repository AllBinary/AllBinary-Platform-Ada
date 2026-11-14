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
limited with org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package;
package org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References is
   type BasicStoreFrontFactory_Access is access all org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package.BasicStoreFrontFactory'Class;
   type BasicStoreFrontFactory_Access_Array is array (Natural range <>) of BasicStoreFrontFactory_Access;
   type BasicStoreFrontFactory_Access_Array_Access is access all BasicStoreFrontFactory_Access_Array;
   type BasicStoreFrontFactory_Access_Array_Access_Array is array (Natural range <>) of BasicStoreFrontFactory_Access_Array_Access;
   type BasicStoreFrontFactory_Access_Array_Access_Array_Access is access all BasicStoreFrontFactory_Access_Array_Access_Array;
   type BasicStoreFrontFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicStoreFrontFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicStoreFrontFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicStoreFrontFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicStoreFrontFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicStoreFrontFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicStoreFrontFactory_Access_Array_Object'Class then BasicStoreFrontFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicStoreFrontFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicStoreFrontFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicStoreFrontFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicStoreFrontFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicStoreFrontFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicStoreFrontFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicStoreFrontFactory_Access_Array_Access_Array_Object'Class then BasicStoreFrontFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References;

with org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References;

package org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype BasicStoreFrontInterface_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access;
   use type BasicStoreFrontInterface_Access;
   subtype BasicStoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array;
   use type BasicStoreFrontInterface_Access_Array;
   subtype BasicStoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access;
   use type BasicStoreFrontInterface_Access_Array_Access;
   subtype BasicStoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array;
   use type BasicStoreFrontInterface_Access_Array_Access_Array;
   subtype BasicStoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   use type BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicStoreFrontFactory_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.BasicStoreFrontFactory_Access;
   function "=" (Left, Right : BasicStoreFrontFactory_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References."=";
   subtype BasicStoreFrontFactory_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.BasicStoreFrontFactory_Access_Array;
   function "=" (Left, Right : BasicStoreFrontFactory_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References."=";
   subtype BasicStoreFrontFactory_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.BasicStoreFrontFactory_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontFactory_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References."=";
   function Java_Box (Value : BasicStoreFrontFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.Java_Box;
   function Java_Unbox_BasicStoreFrontFactory_Access_Array (Value : access Java_Object'Class) return BasicStoreFrontFactory_Access_Array_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.Java_Unbox_BasicStoreFrontFactory_Access_Array;
   subtype BasicStoreFrontFactory_Access_Array_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.BasicStoreFrontFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicStoreFrontFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References."=";
   subtype BasicStoreFrontFactory_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.BasicStoreFrontFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References."=";
   function Java_Box (Value : BasicStoreFrontFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.Java_Box;
   function Java_Unbox_BasicStoreFrontFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicStoreFrontFactory_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package_References.Java_Unbox_BasicStoreFrontFactory_Access_Array_Access_Array;

   type BasicStoreFrontFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : BasicStoreFrontFactory_Access;

   procedure Initialize (This : in out BasicStoreFrontFactory'Class);
   function Create return BasicStoreFrontFactory_Access;
   function getInstance return BasicStoreFrontFactory_Access;
   function getInstance (This : in out BasicStoreFrontFactory; storeName : Unbounded_String) return BasicStoreFrontInterface_Access;
   procedure getInstance (This : in out BasicStoreFrontFactory; storeName : Unbounded_String);

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontFactory_Package;


