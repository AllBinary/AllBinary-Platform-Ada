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



package body views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package is

   procedure Initialize_Fields (This : in out TopBarView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.heading := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TopBarView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TopBarView_Access is
      This : constant TopBarView_Access := new TopBarView;
   begin
      TopBarView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out TopBarView) is
   begin
        TopBarView'Class (This).addDomNodeInterface (DomNodeInterface_Access (TopBarView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function toXmlNode (This : in out TopBarView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        begin
            return This.heading.toXmlNode (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, TopBarView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   --  throws Exception
   function view (This : in out TopBarView) return Unbounded_String is
   begin
        begin
            TopBarView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TopBarView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out TopBarView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TopBarView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package;


