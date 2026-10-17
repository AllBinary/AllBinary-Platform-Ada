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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package;

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type StoreFrontOrdersHistoryStatisticsView is tagged;
   type StoreFrontOrdersHistoryStatisticsView_Access is access all StoreFrontOrdersHistoryStatisticsView'Class;
   type StoreFrontOrdersHistoryStatisticsView_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatisticsView_Access;
   type StoreFrontOrdersHistoryStatisticsView_Access_Array_Access is access all StoreFrontOrdersHistoryStatisticsView_Access_Array;

   type StoreFrontOrdersHistoryStatisticsView is new DomNodeInterface with record
      storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontOrdersHistoryStatisticsView'Class; storeFrontOrdersHistoryStatisticsInterface_Param : access StoreFrontOrdersHistoryStatisticsInterface'Class);
   function Create (storeFrontOrdersHistoryStatisticsInterface_Param : access StoreFrontOrdersHistoryStatisticsInterface'Class) return StoreFrontOrdersHistoryStatisticsView_Access;
   function toXmlNode (This : in out StoreFrontOrdersHistoryStatisticsView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out StoreFrontOrdersHistoryStatisticsView; document_Param : access Document'Class);

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;


