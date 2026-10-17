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


package body tags.generic_Id.GenericViewTag_Package is

   procedure Initialize_Fields (This : in out GenericViewTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.output := Null_Unbounded_String;
      This.file := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericViewTag'Class) is
   begin
      TransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return GenericViewTag_Access is
      This : constant GenericViewTag_Access := new GenericViewTag;
   begin
      GenericViewTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setOutput (This : in out GenericViewTag; value : Unbounded_String) is
   begin
        This.output := value;
        This.getPropertiesHashMap.put (InputOutputTypeData_Package.getInstance.NAME, This.output);
   end setOutput;

   procedure setFile (This : in out GenericViewTag; value : Unbounded_String) is
   begin
        This.file := value;
        This.getPropertiesHashMap.put (InputOutputTypeData_Package.getInstance.FILE, This.file);
   end setFile;

end tags.generic_Id.GenericViewTag_Package;


