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


package body views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package is

   procedure Initialize_Fields (This : in out MetaView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MetaView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.metasValidation := MetasValidation_Package.Create (This.getWeblisketSession.getStoreName);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return MetaView_Access is
      This : constant MetaView_Access := new MetaView;
   begin
      MetaView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   procedure addDomNodeInterfaces (This : in out MetaView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This.metasValidation));
   end addDomNodeInterfaces;

   --  throws Exception
   function toXmlNode (This : in out MetaView; document : Document_Access) return Node_Access is
   begin
        begin
            return This.metasValidation.toXmlNode (document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   --  throws Exception
   function view (This : in out MetaView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out MetaView; document : Document_Access) is
      Java_Result : constant Node_Access := MetaView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package;


