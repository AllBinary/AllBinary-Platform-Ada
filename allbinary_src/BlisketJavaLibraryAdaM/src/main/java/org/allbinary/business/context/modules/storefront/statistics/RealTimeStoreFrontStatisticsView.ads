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

limited with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;
package org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References is
   type RealTimeStoreFrontStatisticsView_Access is access all org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package.RealTimeStoreFrontStatisticsView'Class;
   type RealTimeStoreFrontStatisticsView_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatisticsView_Access;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access is access all RealTimeStoreFrontStatisticsView_Access_Array;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatisticsView_Access_Array_Access;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access_Array_Access is access all RealTimeStoreFrontStatisticsView_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References;

package org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   use type UserRole_Access;
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   use type UserRole_Access_Array;
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   use type UserRole_Access_Array_Access;
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   use type UserRole_Access_Array_Access_Array;
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   use type UserRole_Access_Array_Access_Array_Access;
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
   subtype StoreFrontStatisticsInterface_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access;
   use type StoreFrontStatisticsInterface_Access;
   subtype StoreFrontStatisticsInterface_Access_Array is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array;
   use type StoreFrontStatisticsInterface_Access_Array;
   subtype StoreFrontStatisticsInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access;
   use type StoreFrontStatisticsInterface_Access_Array_Access;
   subtype StoreFrontStatisticsInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access_Array;
   use type StoreFrontStatisticsInterface_Access_Array_Access_Array;
   subtype StoreFrontStatisticsInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access_Array_Access;
   use type StoreFrontStatisticsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RealTimeStoreFrontStatisticsView_Access is org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References.RealTimeStoreFrontStatisticsView_Access;
   function "=" (Left, Right : RealTimeStoreFrontStatisticsView_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References."=";
   subtype RealTimeStoreFrontStatisticsView_Access_Array is org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References.RealTimeStoreFrontStatisticsView_Access_Array;
   function "=" (Left, Right : RealTimeStoreFrontStatisticsView_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References."=";
   subtype RealTimeStoreFrontStatisticsView_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References.RealTimeStoreFrontStatisticsView_Access_Array_Access;
   function "=" (Left, Right : RealTimeStoreFrontStatisticsView_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References."=";
   subtype RealTimeStoreFrontStatisticsView_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References.RealTimeStoreFrontStatisticsView_Access_Array_Access_Array;
   function "=" (Left, Right : RealTimeStoreFrontStatisticsView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References."=";
   subtype RealTimeStoreFrontStatisticsView_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References.RealTimeStoreFrontStatisticsView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RealTimeStoreFrontStatisticsView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package_References."=";

   type RealTimeStoreFrontStatisticsView is new Java_Object and DomNodeInterface with record
      storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access;
      userRole : UserRole_Access;
   end record;

   procedure Initialize (This : in out RealTimeStoreFrontStatisticsView'Class; storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class);
   function Create (storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class) return RealTimeStoreFrontStatisticsView_Access;
   function toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


