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


with org.allbinary.business.user.modules.User_Package; use org.allbinary.business.user.modules.User_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.business.user.CreateUserFactory_Package; use org.allbinary.business.user.CreateUserFactory_Package;

package body org.allbinary.business.user.NewUserFactory_Package is

   package User_Package renames Standard.org.allbinary.business.user.modules.User_Package;
   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   procedure Initialize_Fields (This : in out NewUserFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NewUserFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NewUserFactory_Access is
      This : constant NewUserFactory_Access := new NewUserFactory;
   begin
      NewUserFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance return UserInterface_Access is
   begin
        return UserInterface_Access (User_Package.Create);
   end getInstance;

   --  throws Exception
   function getInstance (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UserInterface_Access is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      httpServletRequest : HttpServletRequest_Access;
      hashMap : HashMap_Access;
      role : Unbounded_String;
   begin
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
        httpServletRequest := HttpServletRequest_Access (httpTransformInfoInterface.getPageContext.getRequest);
        hashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
        role := Java_Unbox (httpTransformInfoInterface.getPropertiesHashMap.get (UserRoleData_Package.NAME.toString));
        hashMap.put (Java_Box (UserRoleData_Package.NAME.toString), Java_Box (role));
        return UserInterface_Access (CreateUserFactory_Package.getInstance (hashMap));
   end getInstance;

   --  throws Exception
   function getInstance (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is
      httpServletRequest : constant HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      requestHashMap : HashMap_Access;
      roleString : Unbounded_String;
   begin
        if (propertiesHashMap) /= (null) then
            requestHashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
            roleString := Java_Unbox (propertiesHashMap.get (Java_Box (UserRoleData_Package.NAME.toString)));
            requestHashMap.put (Java_Box (UserRoleData_Package.NAME.toString), Java_Box (roleString));
            return UserInterface_Access (CreateUserFactory_Package.getInstance (requestHashMap));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null HashMap")));
        end if;
   end getInstance;

   procedure getInstance (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      Java_Result : constant UserInterface_Access := getInstance (transformInfoInterface_Param => transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant UserInterface_Access := getInstance (httpServletRequest_Param => httpServletRequest_Param, propertiesHashMap_Param => propertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.NewUserFactory_Package;


