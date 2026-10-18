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



package body org.allbinary.logic.java.proxy.InterfaceCastProxy_Package is

   procedure Initialize_Fields (This : in out InterfaceCastProxy'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InterfaceCastProxy'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.anyType := anyType;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return InterfaceCastProxy_Access is
      This : constant InterfaceCastProxy_Access := new InterfaceCastProxy;
   begin
      InterfaceCastProxy_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   function newInstance (anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return Proxy_Package.newProxyInstance (anyType.all'Tag.getClassLoader, anyType.all'Tag.getInterfaces, InterfaceCastProxy_Package.Create (anyType));
   end newInstance;

   --  throws Throwable
   function invoke (This : in out InterfaceCastProxy; proxyObject_Param : access Java_Object'Class; proxyMethod_Param : access Method_Package.Method'Class; proxyArgs : Java_Object_Access_Array_Access) return Java_Object_Access is
      proxyObject : constant Java_Object_Access := Java_Object_Access (proxyObject_Param);
      proxyMethod : constant Method_Access := Method_Access (proxyMethod_Param);
      methodName : Unbounded_String;
      realMethod : Method_Access;
   begin
        methodName := proxyMethod.getName;
        realMethod := This.anyType.all'Tag.getMethod (methodName, proxyMethod.getParameterTypes);
        if not (realMethod.isAccessible) then
            realMethod.setAccessible (True);
        end if;
        return proxyMethod.invoke (This.anyType, proxyArgs);
   end invoke;

   procedure newInstance (anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := newInstance (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end newInstance;

   procedure invoke (This : in out InterfaceCastProxy; proxyObject_Param : access Java_Object'Class; proxyMethod_Param : access Method_Package.Method'Class; proxyArgs : Java_Object_Access_Array_Access) is
      Java_Result : constant Java_Object_Access := InterfaceCastProxy'Class (This).invoke (proxyObject_Param, proxyMethod_Param, proxyArgs);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end invoke;

   function newInstance (Value : Unbounded_String) return Java_Object_Access is
   begin
      return newInstance (Java_Box (Value));
   end newInstance;

   procedure newInstance (Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := newInstance (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end newInstance;

end org.allbinary.logic.java.proxy.InterfaceCastProxy_Package;


