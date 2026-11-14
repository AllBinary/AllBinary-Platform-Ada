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
limited with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;
package org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References is
   type StoreFrontAdvertisementsStatisticsView_Access is access all org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package.StoreFrontAdvertisementsStatisticsView'Class;
   type StoreFrontAdvertisementsStatisticsView_Access_Array is array (Natural range <>) of StoreFrontAdvertisementsStatisticsView_Access;
   type StoreFrontAdvertisementsStatisticsView_Access_Array_Access is access all StoreFrontAdvertisementsStatisticsView_Access_Array;
   type StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array is array (Natural range <>) of StoreFrontAdvertisementsStatisticsView_Access_Array_Access;
   type StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access is access all StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array;
   type StoreFrontAdvertisementsStatisticsView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontAdvertisementsStatisticsView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontAdvertisementsStatisticsView_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontAdvertisementsStatisticsView_Access_Array_Object'Class then StoreFrontAdvertisementsStatisticsView_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Object'Class then StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References;

package org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype StoreFrontAdvertisementsStatisticsInterface_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References.StoreFrontAdvertisementsStatisticsInterface_Access;
   use type StoreFrontAdvertisementsStatisticsInterface_Access;
   subtype StoreFrontAdvertisementsStatisticsInterface_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References.StoreFrontAdvertisementsStatisticsInterface_Access_Array;
   use type StoreFrontAdvertisementsStatisticsInterface_Access_Array;
   subtype StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References.StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access;
   use type StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access;
   subtype StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References.StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array;
   use type StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array;
   subtype StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package_References.StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array_Access;
   use type StoreFrontAdvertisementsStatisticsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontAdvertisementsStatisticsView_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.StoreFrontAdvertisementsStatisticsView_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatisticsView_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References."=";
   subtype StoreFrontAdvertisementsStatisticsView_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.StoreFrontAdvertisementsStatisticsView_Access_Array;
   function "=" (Left, Right : StoreFrontAdvertisementsStatisticsView_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References."=";
   subtype StoreFrontAdvertisementsStatisticsView_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.StoreFrontAdvertisementsStatisticsView_Access_Array_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatisticsView_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References."=";
   function Java_Box (Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.Java_Box;
   function Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array (Value : access Java_Object'Class) return StoreFrontAdvertisementsStatisticsView_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array;
   subtype StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References."=";
   subtype StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References."=";
   function Java_Box (Value : StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.Java_Box;
   function Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package_References.Java_Unbox_StoreFrontAdvertisementsStatisticsView_Access_Array_Access_Array;

   type StoreFrontAdvertisementsStatisticsView is new Java_Object and DomNodeInterface with record
      storeFrontAdvertisementsStatisticsInterface : StoreFrontAdvertisementsStatisticsInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontAdvertisementsStatisticsView'Class; storeFrontAdvertisementsStatisticsInterface_Param : access StoreFrontAdvertisementsStatisticsInterface_Package.StoreFrontAdvertisementsStatisticsInterface'Class);
   function Create (storeFrontAdvertisementsStatisticsInterface_Param : access StoreFrontAdvertisementsStatisticsInterface_Package.StoreFrontAdvertisementsStatisticsInterface'Class) return StoreFrontAdvertisementsStatisticsView_Access;
   function toXmlNode (This : in out StoreFrontAdvertisementsStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out StoreFrontAdvertisementsStatisticsView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;


