--  Generated Code Do Not Modify



package body org.allbinary.AndroidResources_Package is

   procedure Initialize_Fields (This : in out AndroidResources'Class) is
   begin
      null;
      This.drawable := drawable_Package.Create;
      This.id := id_Package.Create;
      This.layout := layout_Package.Create;
      This.raw := raw_Package.Create;
      This.string_Id := string_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidResources'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidResources_Access is
      This : constant AndroidResources_Access := new AndroidResources;
   begin
      AndroidResources_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidResources_Access is
   begin
        return AndroidResources_Package.instance;
   end getInstance;

begin
   null;
   instance := AndroidResources_Package.Create;

end org.allbinary.AndroidResources_Package;


