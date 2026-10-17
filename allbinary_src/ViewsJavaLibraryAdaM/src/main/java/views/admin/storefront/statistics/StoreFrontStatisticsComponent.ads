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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;
with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package is

   package StoreFrontFactory_Package renames org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package RealTimeStoreFrontStatistics_Package renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;
   package RealTimeStoreFrontStatisticsView_Package renames org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type StoreFrontStatisticsComponent is tagged;
   type StoreFrontStatisticsComponent_Access is access all StoreFrontStatisticsComponent'Class;
   type StoreFrontStatisticsComponent_Access_Array is array (Natural range <>) of StoreFrontStatisticsComponent_Access;
   type StoreFrontStatisticsComponent_Access_Array_Access is access all StoreFrontStatisticsComponent_Access_Array;

   type StoreFrontStatisticsComponent is new HttpStoreComponentView with record
      logUtil : LogUtil_Access;
      newStoreFrontInterface : StoreFrontInterface_Access;
      domNodeInterface : DomNodeInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontStatisticsComponent'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreFrontStatisticsComponent_Access;
   procedure addDomNodeInterfaces (This : in out StoreFrontStatisticsComponent);
   function view (This : in out StoreFrontStatisticsComponent) return Unbounded_String;
   procedure view (This : in out StoreFrontStatisticsComponent);

end views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package;


