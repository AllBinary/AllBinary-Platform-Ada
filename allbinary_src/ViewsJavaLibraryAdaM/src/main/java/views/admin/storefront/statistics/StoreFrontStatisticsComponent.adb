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


package body views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package is

   procedure Initialize_Fields (This : in out StoreFrontStatisticsComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontStatisticsComponent'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.newStoreFrontInterface := StoreFrontInterface_Access (StoreFrontFactory_Package.getInstance (transformInfoInterface.getStoreName));
        This.domNodeInterface := RealTimeStoreFrontStatisticsView_Package.Create (RealTimeStoreFrontStatistics_Package.Create (This.newStoreFrontInterface), This.getWeblisketSession.getRole);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreFrontStatisticsComponent_Access is
      This : constant StoreFrontStatisticsComponent_Access := new StoreFrontStatisticsComponent;
   begin
      StoreFrontStatisticsComponent_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out StoreFrontStatisticsComponent) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This.domNodeInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out StoreFrontStatisticsComponent) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.admin.storefront.statistics.StoreFrontStatisticsComponent_Package;


