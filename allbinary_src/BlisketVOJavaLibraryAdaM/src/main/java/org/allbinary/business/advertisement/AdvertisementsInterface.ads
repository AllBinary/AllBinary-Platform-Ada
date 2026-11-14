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
limited with org.allbinary.business.advertisement.AdvertisementsInterface_Package;
package org.allbinary.business.advertisement.AdvertisementsInterface_Package_References is
   type AdvertisementsInterface_Access is access all org.allbinary.business.advertisement.AdvertisementsInterface_Package.AdvertisementsInterface'Class;
   type AdvertisementsInterface_Access_Array is array (Natural range <>) of AdvertisementsInterface_Access;
   type AdvertisementsInterface_Access_Array_Access is access all AdvertisementsInterface_Access_Array;
   type AdvertisementsInterface_Access_Array_Access_Array is array (Natural range <>) of AdvertisementsInterface_Access_Array_Access;
   type AdvertisementsInterface_Access_Array_Access_Array_Access is access all AdvertisementsInterface_Access_Array_Access_Array;
   type AdvertisementsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementsInterface_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementsInterface_Access_Array_Object'Class then AdvertisementsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AdvertisementsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AdvertisementsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AdvertisementsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AdvertisementsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AdvertisementsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AdvertisementsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AdvertisementsInterface_Access_Array_Access_Array_Object'Class then AdvertisementsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;

with org.allbinary.business.advertisement.AdvertisementsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.advertisement.AdvertisementInterface_Package;
with org.allbinary.business.advertisement.AdvertisementInterface_Package_References;

package org.allbinary.business.advertisement.AdvertisementsInterface_Package is

   package Reference_Types is
   subtype AdvertisementInterface_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access;
   use type AdvertisementInterface_Access;
   subtype AdvertisementInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array;
   use type AdvertisementInterface_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access;
   subtype AdvertisementInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array;
   use type AdvertisementInterface_Access_Array_Access_Array;
   subtype AdvertisementInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementInterface_Package_References.AdvertisementInterface_Access_Array_Access_Array_Access;
   use type AdvertisementInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AdvertisementsInterface is interface;
   subtype AdvertisementsInterface_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementsInterface_Access_Array (Value : access Java_Object'Class) return AdvertisementsInterface_Access_Array_Access renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.Java_Unbox_AdvertisementsInterface_Access_Array;
   subtype AdvertisementsInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   subtype AdvertisementsInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.AdvertisementsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References."=";
   function Java_Box (Value : AdvertisementsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.Java_Box;
   function Java_Unbox_AdvertisementsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AdvertisementsInterface_Access_Array_Access_Array_Access renames org.allbinary.business.advertisement.AdvertisementsInterface_Package_References.Java_Unbox_AdvertisementsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AdvertisementsInterface (Value : AdvertisementsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure add (This : in out AdvertisementsInterface; advertisementInterface_Param : access AdvertisementInterface_Package.AdvertisementInterface'Class) is abstract;
   function get (This : in out AdvertisementsInterface; index : Integer) return AdvertisementInterface_Access is abstract;
   procedure get (This : in out AdvertisementsInterface; index : Integer) is abstract;
   function getCurrentPageNum (This : in out AdvertisementsInterface) return Integer is abstract;
   function getErrorDescription (This : in out AdvertisementsInterface) return Unbounded_String is abstract;
   function getErrorNum (This : in out AdvertisementsInterface) return Unbounded_String is abstract;
   function getNumberOfPosters (This : in out AdvertisementsInterface) return Integer is abstract;
   function getNumberOfProductsInPage (This : in out AdvertisementsInterface) return Integer is abstract;
   function getStatusCode (This : in out AdvertisementsInterface) return Integer is abstract;
   function getTotalNumberOfProducts (This : in out AdvertisementsInterface) return Integer is abstract;
   function isSearchValid (This : in out AdvertisementsInterface) return Boolean is abstract;
   procedure setCurrentPageNum (This : in out AdvertisementsInterface; currentPageNum : Integer) is abstract;
   procedure setErrorDescription (This : in out AdvertisementsInterface; errorDescription : Unbounded_String) is abstract;
   procedure setErrorNum (This : in out AdvertisementsInterface; errorNum : Unbounded_String) is abstract;
   procedure setNumberOfProductsInPage (This : in out AdvertisementsInterface; numberOfProductsInPage : Integer) is abstract;
   procedure setStatusCode (This : in out AdvertisementsInterface; statusCode : Integer) is abstract;
   procedure setTotalNumberOfProducts (This : in out AdvertisementsInterface; totalNumberOfProducts : Integer) is abstract;
   function toString (This : in out AdvertisementsInterface) return Unbounded_String is abstract;

end org.allbinary.business.advertisement.AdvertisementsInterface_Package;


