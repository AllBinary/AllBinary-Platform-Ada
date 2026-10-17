--  Generated Code Do Not Modify


package body org.osgi.framework.BundleException_Package is

   procedure Initialize_Fields (This : in out BundleException'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BundleException'Class) is
   begin
      Exception_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return BundleException_Access is
      This : constant BundleException_Access := new BundleException;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.osgi.framework.BundleException_Package;


