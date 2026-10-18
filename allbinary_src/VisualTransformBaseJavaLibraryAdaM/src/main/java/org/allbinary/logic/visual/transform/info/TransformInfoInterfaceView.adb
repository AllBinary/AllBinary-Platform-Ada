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


with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoInterfaceView_Package is

   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out TransformInfoInterfaceView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoInterfaceView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.transformInfoInterface := transformInfoInterface;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoInterfaceView_Access is
      This : constant TransformInfoInterfaceView_Access := new TransformInfoInterfaceView;
   begin
      TransformInfoInterfaceView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out TransformInfoInterfaceView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return ModDomHelper_Package.createNameValueNodes (document, TransformInfoData_Package.getInstance.NAME, This.transformInfoInterface.toHashMap);
   end toXmlNode;

   procedure toXmlNode (This : in out TransformInfoInterfaceView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := TransformInfoInterfaceView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.info.TransformInfoInterfaceView_Package;


