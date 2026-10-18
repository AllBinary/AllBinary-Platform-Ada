--  Generated Code Do Not Modify



package body org.allbinary.graph.E_Package is

   procedure Initialize_Fields (This : in out E'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out E'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return E_Access is
      This : constant E_Access := new E;
   begin
      E_Package.Initialize (This.all);
      return This;
   end Create;


   function newInstance (This : in out E) return E_Access is
   begin
        return E_Package.e;
   end newInstance;

begin
   null;
   e := E_Package.Create;

end org.allbinary.graph.E_Package;


