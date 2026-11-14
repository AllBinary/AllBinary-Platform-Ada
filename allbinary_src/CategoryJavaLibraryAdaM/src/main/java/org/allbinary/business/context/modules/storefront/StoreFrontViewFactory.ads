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
limited with org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package;
package org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References is
   type StoreFrontViewFactory_Access is access all org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package.StoreFrontViewFactory'Class;
   type StoreFrontViewFactory_Access_Array is array (Natural range <>) of StoreFrontViewFactory_Access;
   type StoreFrontViewFactory_Access_Array_Access is access all StoreFrontViewFactory_Access_Array;
   type StoreFrontViewFactory_Access_Array_Access_Array is array (Natural range <>) of StoreFrontViewFactory_Access_Array_Access;
   type StoreFrontViewFactory_Access_Array_Access_Array_Access is access all StoreFrontViewFactory_Access_Array_Access_Array;
   type StoreFrontViewFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontViewFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontViewFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontViewFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontViewFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontViewFactory_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontViewFactory_Access_Array_Object'Class then StoreFrontViewFactory_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontViewFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontViewFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontViewFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontViewFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontViewFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontViewFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontViewFactory_Access_Array_Access_Array_Object'Class then StoreFrontViewFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References;

with org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype DomNodeInterface_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access;
   use type DomNodeInterface_Access;
   subtype DomNodeInterface_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array;
   use type DomNodeInterface_Access_Array;
   subtype DomNodeInterface_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access;
   subtype DomNodeInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array;
   use type DomNodeInterface_Access_Array_Access_Array;
   subtype DomNodeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontViewFactory_Access is org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.StoreFrontViewFactory_Access;
   function "=" (Left, Right : StoreFrontViewFactory_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References."=";
   subtype StoreFrontViewFactory_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.StoreFrontViewFactory_Access_Array;
   function "=" (Left, Right : StoreFrontViewFactory_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References."=";
   subtype StoreFrontViewFactory_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.StoreFrontViewFactory_Access_Array_Access;
   function "=" (Left, Right : StoreFrontViewFactory_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References."=";
   function Java_Box (Value : StoreFrontViewFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.Java_Box;
   function Java_Unbox_StoreFrontViewFactory_Access_Array (Value : access Java_Object'Class) return StoreFrontViewFactory_Access_Array_Access renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.Java_Unbox_StoreFrontViewFactory_Access_Array;
   subtype StoreFrontViewFactory_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.StoreFrontViewFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontViewFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References."=";
   subtype StoreFrontViewFactory_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.StoreFrontViewFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontViewFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References."=";
   function Java_Box (Value : StoreFrontViewFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.Java_Box;
   function Java_Unbox_StoreFrontViewFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontViewFactory_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package_References.Java_Unbox_StoreFrontViewFactory_Access_Array_Access_Array;

   type StoreFrontViewFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreFrontViewFactory'Class);
   function Create return StoreFrontViewFactory_Access;
   function getInstance (storeName : Unbounded_String) return DomNodeInterface_Access;
   procedure getInstance (storeName : Unbounded_String);

end org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package;


