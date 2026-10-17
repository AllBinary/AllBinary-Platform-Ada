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


package body org.allbinary.logic.visual.transform.AbTransformer_Package is

   procedure Initialize_Fields (This : in out AbTransformer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.inputStream := null;
      This.uriResolver := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbTransformer'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AbTransformer_Access is
      This : constant AbTransformer_Access := new AbTransformer;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function getTransformInfoInterface (This : in out AbTransformer) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   procedure setInputStream (This : in out AbTransformer; inputStream : InputStream_Access) is
   begin
        This.inputStream := inputStream;
   end setInputStream;

   procedure setURIResolver (This : in out AbTransformer; uriResolver : URIResolver_Access) is
   begin
        This.uriResolver := uriResolver;
   end setURIResolver;

   function getInputStream (This : in out AbTransformer) return InputStream_Access is
   begin
        return This.inputStream;
   end getInputStream;

   function getURIResolver (This : in out AbTransformer) return URIResolver_Access is
   begin
        return This.uriResolver;
   end getURIResolver;

   function getStreamSource (This : in out AbTransformer) return StreamSource_Access is
   begin
        return StreamSource_Package.Create (This.getInputStream);
   end getStreamSource;

   --  throws Exception
   function translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) return Unbounded_String is
      result : Unbounded_String;
      transformInfoObjectConfigGeneratorInterface : TransformInfoObjectConfigGenerator_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XMLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("xml: " & ASCII.LF & "") & xmlDocumentStr, This'Unchecked_Access, To_Unbounded_String ("translate(String xmlDocumentStr)"));
            end if;
            if (This.getURIResolver) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No URIResolver")));
            end if;
            result := XslHelper_Package.getInstance.translate (This.getURIResolver, StreamSource_Package.Create (This.getInputStream), StreamSource_Package.Create (StringBufferInputStream_Package.Create (xmlDocumentStr)));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("translated xml: ") & result, This'Unchecked_Access, To_Unbounded_String ("translate(String xmlDocumentStr)"));
            end if;
            transformInfoObjectConfigGeneratorInterface := TransformInfoObjectConfigGeneratorFactory_Package.getInstance.getInstance (This.getTransformInfoInterface);
            return transformInfoObjectConfigGeneratorInterface.process (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.transformInfoInterface.log, This'Unchecked_Access, To_Unbounded_String ("translate(document)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end translate;

   procedure getTransformInfoInterface (This : in out AbTransformer) is
      Java_Result : constant TransformInfoInterface_Access := AbTransformer'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure getInputStream (This : in out AbTransformer) is
      Java_Result : constant InputStream_Access := AbTransformer'Class (This).getInputStream;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputStream;

   procedure getURIResolver (This : in out AbTransformer) is
      Java_Result : constant URIResolver_Access := AbTransformer'Class (This).getURIResolver;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getURIResolver;

   procedure getStreamSource (This : in out AbTransformer) is
      Java_Result : constant StreamSource_Access := AbTransformer'Class (This).getStreamSource;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStreamSource;

   procedure translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbTransformer'Class (This).translate (xmlDocumentStr);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

end org.allbinary.logic.visual.transform.AbTransformer_Package;


