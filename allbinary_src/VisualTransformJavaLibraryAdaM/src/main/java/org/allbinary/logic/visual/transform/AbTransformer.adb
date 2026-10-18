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


with org.allbinary.data.tree.dom.XslHelper_Package; use org.allbinary.data.tree.dom.XslHelper_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;

package body org.allbinary.logic.visual.transform.AbTransformer_Package is

   package XslHelper_Package renames Standard.org.allbinary.data.tree.dom.XslHelper_Package;
   package TransformInfoObjectConfigGenerator_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
   package TransformInfoObjectConfigGeneratorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
   procedure Initialize_Fields (This : in out AbTransformer'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.inputStream := null;
      This.uriResolver := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbTransformer'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AbTransformer_Access is
      This : constant AbTransformer_Access := new AbTransformer;
   begin
      AbTransformer_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function getTransformInfoInterface (This : in out AbTransformer) return TransformInfoInterface_Access is
   begin
        return This.transformInfoInterface;
   end getTransformInfoInterface;

   procedure setInputStream (This : in out AbTransformer; inputStream_Param : access InputStream_Package.InputStream'Class) is
      inputStream : constant InputStream_Access := InputStream_Access (inputStream_Param);
   begin
        This.inputStream := inputStream;
   end setInputStream;

   procedure setURIResolver (This : in out AbTransformer; uriResolver_Param : access URIResolver_Package.URIResolver'Class) is
      uriResolver : constant URIResolver_Access := URIResolver_Access (uriResolver_Param);
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
        return StreamSource_Package.Create (AbTransformer'Class (This).getInputStream);
   end getStreamSource;

   --  throws Exception
   function translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) return Unbounded_String is
      result : Unbounded_String;
      transformInfoObjectConfigGeneratorInterface : TransformInfoObjectConfigGenerator_Access;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XMLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("xml: " & ASCII.LF & "") & xmlDocumentStr, AbTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("translate(String xmlDocumentStr)"));
            end if;
            if (AbTransformer'Class (This).getURIResolver) = (null) then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No URIResolver")));
            end if;
            result := XslHelper_Package.getInstance.translate (AbTransformer'Class (This).getURIResolver, StreamSource_Package.Create (AbTransformer'Class (This).getInputStream), StreamSource_Package.Create (StringBufferInputStream_Package.Create (xmlDocumentStr)));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("translated xml: ") & result, AbTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("translate(String xmlDocumentStr)"));
            end if;
            transformInfoObjectConfigGeneratorInterface := TransformInfoObjectConfigGeneratorFactory_Package.getInstance.getInstance (AbTransformer'Class (This).getTransformInfoInterface);
            return transformInfoObjectConfigGeneratorInterface.process (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.transformInfoInterface.log, AbTransformer_Access'(This'Unchecked_Access), To_Unbounded_String ("translate(document)"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end translate;

   procedure translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbTransformer'Class (This).translate (xmlDocumentStr => xmlDocumentStr);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end translate;

end org.allbinary.logic.visual.transform.AbTransformer_Package;


