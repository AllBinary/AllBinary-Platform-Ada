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


package body org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package is

   procedure Initialize_Fields (This : in out TransformStoreDocument'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformStoreDocument'Class; pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      weblisketSession : constant WeblisketSession_Access := WeblisketSession_Access (weblisketSession_Param);
      storeName : Unbounded_String;
   begin
        TransformHttpRequestDocument_Package.Initialize (This, pageContext, weblisketSession);
        Initialize_Fields (This);
        begin
            storeName := weblisketSession.getStoreName;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Using Session StoreName: ") & storeName, TransformStoreDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            end if;
            TransformStoreDocument'Class (This).getBaseNode.appendChild (StoreFrontViewFactory_Package.getInstance (storeName).toXmlNode (TransformStoreDocument'Class (This).getDoc));
            TransformStoreDocument'Class (This).getBaseNode.appendChild (RequestParams_Package.Create (HttpServletRequest_Access (pageContext.getRequest)).toXmlNode (TransformStoreDocument'Class (This).getDoc));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformStoreDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class; weblisketSession_Param : access WeblisketSession_Package.WeblisketSession'Class) return TransformStoreDocument_Access is
      This : constant TransformStoreDocument_Access := new TransformStoreDocument;
   begin
      TransformStoreDocument_Package.Initialize (This.all, pageContext_Param, weblisketSession_Param);
      return This;
   end Create;

   procedure Initialize (This : in out TransformStoreDocument'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) is
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
   begin
        TransformHttpRequestDocument_Package.Initialize (This, searchRequest);
        Initialize_Fields (This);
        begin
            TransformStoreDocument'Class (This).getBaseNode.appendChild (StoreFrontViewFactory_Package.getInstance (searchRequest.getStoreFront.getName).toXmlNode (TransformStoreDocument'Class (This).getDoc));
            TransformStoreDocument'Class (This).getBaseNode.appendChild (searchRequest.getParams.getParamsNode (TransformStoreDocument'Class (This).getDoc));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TransformStoreDocument_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformStoreDocument_Access is
      This : constant TransformStoreDocument_Access := new TransformStoreDocument;
   begin
      TransformStoreDocument_Package.Initialize (This.all, searchRequest_Param);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;


