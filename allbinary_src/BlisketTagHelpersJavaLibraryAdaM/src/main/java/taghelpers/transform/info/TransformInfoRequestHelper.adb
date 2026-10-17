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


package body taghelpers.transform.info.TransformInfoRequestHelper_Package is

   procedure Initialize_Fields (This : in out TransformInfoRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoRequestHelper'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.transformInfoInterface := TransformInfoHttpStoreNoManipulation_Package.Create (propertiesHashMap, pageContext);
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoRequestHelper_Access is
      This : constant TransformInfoRequestHelper_Access := new TransformInfoRequestHelper;
   begin
      Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   function update (This : in out TransformInfoRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      hashMapData : HashMap_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Updated Successfully");
            hashMapData := This.transformInfoInterface.toHashMap;
            TransformInfoEntityBuilder_Package.getInstance.update (hashMapData);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   function insert (This : in out TransformInfoRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      values : BasicArrayList_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Added TransformInfo Successfully");
            values := This.transformInfoInterface.toVector;
            TransformInfoEntityBuilder_Package.getInstance.insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out TransformInfoRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Delete Successfully");
            TransformInfoEntityBuilder_Package.getInstance.delete (Unbounded_String (This.transformInfoInterface.getKey));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete storefronts table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   procedure update (This : in out TransformInfoRequestHelper) is
      Java_Result : constant Unbounded_String := TransformInfoRequestHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure insert (This : in out TransformInfoRequestHelper) is
      Java_Result : constant Unbounded_String := TransformInfoRequestHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure delete (This : in out TransformInfoRequestHelper) is
      Java_Result : constant Unbounded_String := TransformInfoRequestHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

end taghelpers.transform.info.TransformInfoRequestHelper_Package;


