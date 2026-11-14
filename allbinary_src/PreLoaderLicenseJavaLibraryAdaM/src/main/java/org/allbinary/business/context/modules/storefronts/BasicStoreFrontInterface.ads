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
limited with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;
package org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References is
   type BasicStoreFrontInterface_Access is access all org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package.BasicStoreFrontInterface'Class;
   type BasicStoreFrontInterface_Access_Array is array (Natural range <>) of BasicStoreFrontInterface_Access;
   type BasicStoreFrontInterface_Access_Array_Access is access all BasicStoreFrontInterface_Access_Array;
   type BasicStoreFrontInterface_Access_Array_Access_Array is array (Natural range <>) of BasicStoreFrontInterface_Access_Array_Access;
   type BasicStoreFrontInterface_Access_Array_Access_Array_Access is access all BasicStoreFrontInterface_Access_Array_Access_Array;
   type BasicStoreFrontInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicStoreFrontInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicStoreFrontInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicStoreFrontInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicStoreFrontInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicStoreFrontInterface_Access_Array_Access is (if Value /= null and then Value.all in BasicStoreFrontInterface_Access_Array_Object'Class then BasicStoreFrontInterface_Access_Array_Object'Class (Value.all).Value else null);
   type BasicStoreFrontInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicStoreFrontInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicStoreFrontInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicStoreFrontInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicStoreFrontInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicStoreFrontInterface_Access_Array_Access_Array_Object'Class then BasicStoreFrontInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References;

with org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type BasicStoreFrontInterface is interface;
   subtype BasicStoreFrontInterface_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access;
   function "=" (Left, Right : BasicStoreFrontInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References."=";
   subtype BasicStoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array;
   function "=" (Left, Right : BasicStoreFrontInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References."=";
   subtype BasicStoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References."=";
   function Java_Box (Value : BasicStoreFrontInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.Java_Box;
   function Java_Unbox_BasicStoreFrontInterface_Access_Array (Value : access Java_Object'Class) return BasicStoreFrontInterface_Access_Array_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.Java_Unbox_BasicStoreFrontInterface_Access_Array;
   subtype BasicStoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicStoreFrontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References."=";
   subtype BasicStoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.BasicStoreFrontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicStoreFrontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References."=";
   function Java_Box (Value : BasicStoreFrontInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.Java_Box;
   function Java_Unbox_BasicStoreFrontInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicStoreFrontInterface_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package_References.Java_Unbox_BasicStoreFrontInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_BasicStoreFrontInterface (Value : BasicStoreFrontInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTestHtmlPath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHomeHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getCurrentHomeHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getUserName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getBasketName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getHomeHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getHomeHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestHomeHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestHomeHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestHostName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestHostNamePath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getStaticPath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getCategoryPath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getSubStores (This : in out BasicStoreFrontInterface) return BasicArrayList_Access is abstract;
   function getTagLocation (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getPackageLocation (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getInventoryControl (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getFtp (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getFtpPath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getFtpUserName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getFtpPassword (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtp (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpPath (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpUserName (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTestFtpPassword (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getTimeCreated (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;
   function getLastModified (This : in out BasicStoreFrontInterface) return Unbounded_String is abstract;

end org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface_Package;


