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


package body taghelpers.ViewHelper_Package is

   procedure Initialize_Fields (This : in out ViewHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.abeClientInformation := ServiceClientInformationInterfaceFactory_Package.getInstance;
      
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ViewHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      Initialize_Fields (This);
        This.componentInterface := TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, hashMap, pageContext);
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return ViewHelper_Access is
      This : constant ViewHelper_Access := new ViewHelper;
   begin
      ViewHelper_Package.Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   function getTypeId (This : in out ViewHelper) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   --  throws Exception
   function view (This : in out ViewHelper) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            return This.componentInterface.view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to View: ");
            if (This.componentInterface) /= (null) then
                error := error & To_Unbounded_String (Ada.Tags.Expanded_Name (This.componentInterface.all'Tag));
            else
                error := error & To_Unbounded_String ("Unknown");
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   --  throws Exception
   function toXmlDoc (This : in out ViewHelper) return Document_Access is
      error : Unbounded_String;
   begin
        begin
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Hmm: ") & Java_Image (This.componentInterface.getTransformDocumentInterface.getDoc)));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to View: ");
            if (This.componentInterface) /= (null) then
                error := error & To_Unbounded_String (Ada.Tags.Expanded_Name (This.componentInterface.all'Tag));
            else
                error := error & To_Unbounded_String ("Unknown");
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlDoc;

   function getViewObject (This : in out ViewHelper) return TransformInterface_Access is
   begin
        return This.componentInterface;
   end getViewObject;

   --  throws Exception
   function getTransformInfoInterface (This : in out ViewHelper) return TransformInfoInterface_Access is
   begin
        return This.componentInterface.getTransformInfoInterface;
   end getTransformInfoInterface;

   function getTransformDocumentInterface (This : in out ViewHelper) return TransformDocumentInterface_Access is
   begin
        return null;
   end getTransformDocumentInterface;

   procedure setTransformDocumentInterface (This : in out ViewHelper; viewDocumentInterface : TransformDocumentInterface_Access) is
   begin
        return;
   end setTransformDocumentInterface;

end taghelpers.ViewHelper_Package;


