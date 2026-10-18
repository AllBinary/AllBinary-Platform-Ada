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


package body views.generic_Id.advertisement.area.AdvertisementAreaView_Package is

   procedure Initialize_Fields (This : in out AdvertisementAreaView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementAreaView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.advertisementAreaName := Java_Unbox (AdvertisementAreaView'Class (This).getPropertiesHashMap.get (AdvertisementAreaData_Package.getInstance.NAME));
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AdvertisementAreaView_Access is
      This : constant AdvertisementAreaView_Access := new AdvertisementAreaView;
   begin
      AdvertisementAreaView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out AdvertisementAreaView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      advertisementAreasEntityInterface : AdvertisementAreasEntityInterface_Access;
      advertisementAreaInterface : AdvertisementAreaInterface_Access;
   begin
        begin
            advertisementAreasEntityInterface := AdvertisementAreasEntityFactory_Package.getInstance;
            advertisementAreaInterface := advertisementAreasEntityInterface.get (AdvertisementAreaView'Class (This).getTransformInfoInterface.getStoreName, This.advertisementAreaName);
            return null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, AdvertisementAreaView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out AdvertisementAreaView) is
   begin
        AdvertisementAreaView'Class (This).addDomNodeInterface (DomNodeInterface_Access (AdvertisementAreaView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out AdvertisementAreaView) return Unbounded_String is
   begin
        begin
            AdvertisementAreaView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AdvertisementAreaView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out AdvertisementAreaView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AdvertisementAreaView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.advertisement.area.AdvertisementAreaView_Package;


