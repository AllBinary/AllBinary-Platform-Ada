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


with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;
with org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;
with views.HttpComponentView_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package;

package body views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package RealTimeStoreFrontStatistics_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;
   package RealTimeStoreFrontStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   function "=" (Left, Right : StoreFrontInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype DomNodeInterface_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access;
   function "=" (Left, Right : DomNodeInterface_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeInterface_Package_References."=";
   subtype DomNodeInterface_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array;
   function "=" (Left, Right : DomNodeInterface_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomNodeInterface_Package_References."=";
   subtype DomNodeInterface_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access;
   function "=" (Left, Right : DomNodeInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeInterface_Package_References."=";
   subtype DomNodeInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DomNodeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.DomNodeInterface_Package_References."=";
   subtype DomNodeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DomNodeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.DomNodeInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   function "=" (Left, Right : TransformInfoInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References."=";
   procedure Initialize_Fields (This : in out StoreFrontStatisticsComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontStatisticsComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.newStoreFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (transformInfoInterface.getStoreName));
        This.domNodeInterface := DomNodeInterface_Access (RealTimeStoreFrontStatisticsView_Package.Create (RealTimeStoreFrontStatistics_Package.Create (This.newStoreFrontInterface), StoreFrontStatisticsComponent'Class (This).getWeblisketSession.getRole));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreFrontStatisticsComponent_Access is
      This : constant StoreFrontStatisticsComponent_Access := new StoreFrontStatisticsComponent;
   begin
      StoreFrontStatisticsComponent_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out StoreFrontStatisticsComponent) is
   begin
        StoreFrontStatisticsComponent'Class (This).addDomNodeInterface (DomNodeInterface_Access (This.domNodeInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out StoreFrontStatisticsComponent) return Unbounded_String is
   begin
        begin
            StoreFrontStatisticsComponent'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, StoreFrontStatisticsComponent_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package;


