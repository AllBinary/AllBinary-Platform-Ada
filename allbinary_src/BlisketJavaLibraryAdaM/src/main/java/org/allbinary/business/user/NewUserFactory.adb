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


package body org.allbinary.business.user.NewUserFactory_Package is

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
        return User_Package.Create;
   end getInstance;

   --  throws Exception
   function getInstance (transformInfoInterface_Param : access TransformInfoInterface'Class) return UserInterface_Access is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      httpServletRequest : HttpServletRequest_Access;
      hashMap : HashMap_Access;
      role : Unbounded_String;
   begin
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
        httpServletRequest := HttpServletRequest_Access (httpTransformInfoInterface.getPageContext.getRequest);
        hashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
        role := Unbounded_String (httpTransformInfoInterface.getPropertiesHashMap.get (UserRoleData_Package.NAME.toString));
        hashMap.put (UserRoleData_Package.NAME.toString, role);
        return CreateUserFactory_Package.getInstance (hashMap);
   end getInstance;

   --  throws Exception
   function getInstance (httpServletRequest_Param : access HttpServletRequest'Class; propertiesHashMap_Param : access HashMap'Class) return UserInterface_Access is
      httpServletRequest : HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      propertiesHashMap : HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      requestHashMap : HashMap_Access;
      roleString : Unbounded_String;
   begin
        if (propertiesHashMap) /= (null) then
            requestHashMap := RequestParams_Package.Create (httpServletRequest).toHashMap;
            roleString := Unbounded_String (propertiesHashMap.get (UserRoleData_Package.NAME.toString));
            requestHashMap.put (UserRoleData_Package.NAME.toString, roleString);
            return CreateUserFactory_Package.getInstance (requestHashMap);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Null HashMap")));
        end if;
   end getInstance;

   procedure getInstance (transformInfoInterface_Param : access TransformInfoInterface'Class) is
      Java_Result : constant UserInterface_Access := getInstance (transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (httpServletRequest_Param : access HttpServletRequest'Class; propertiesHashMap_Param : access HashMap'Class) is
      Java_Result : constant UserInterface_Access := getInstance (httpServletRequest_Param, propertiesHashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.NewUserFactory_Package;


