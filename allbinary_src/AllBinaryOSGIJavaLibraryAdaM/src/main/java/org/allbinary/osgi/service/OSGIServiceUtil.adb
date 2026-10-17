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


package body org.allbinary.osgi.service.OSGIServiceUtil_Package is

   procedure Initialize_Fields (This : in out OSGIServiceUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return OSGIServiceUtil_Access is
   begin
        return OSGIServiceUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OSGIServiceUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OSGIServiceUtil_Access is
      This : constant OSGIServiceUtil_Access := new OSGIServiceUtil;
   begin
      OSGIServiceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access) return BasicArrayList_Access is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
      vector : BasicArrayList_Access;
      size : Integer;
      serviceReference : ServiceReference_Access;
      osgiServiceInterface : OSGIServiceInterface_Access;
      index : Integer;
   begin
        vector := BasicArrayListD_Package.Create;
        if (serviceReferences) /= (null) then
            size := serviceReferences'Length;
            This.logUtil.putF (To_Unbounded_String ("Service References: ") & Java_Image (size), OSGIServiceUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getServicesObjectVector"));
            for index in 0 .. (size) - 1 loop
                serviceReference := serviceReferences (index);
                if (serviceReference) /= (null) then
                    osgiServiceInterface := OSGIServiceInterface_Access (bundleContext.getService (serviceReference));
                    if (osgiServiceInterface) = (null) then
                        Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Service For Reference")));
                    end if;
                    vector.add (osgiServiceInterface);
                end if;
            end loop;
        end if;
        return vector;
   end getServicesObjectVector;

   procedure getServicesObjectVector (This : in out OSGIServiceUtil; bundleContext_Param : access BundleContext_Package.BundleContext'Class; serviceReferences : ServiceReference_Access_Array_Access) is
      Java_Result : constant BasicArrayList_Access := OSGIServiceUtil'Class (This).getServicesObjectVector (bundleContext_Param, serviceReferences);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getServicesObjectVector;

begin
   null;
   instance := OSGIServiceUtil_Package.Create;

end org.allbinary.osgi.service.OSGIServiceUtil_Package;


