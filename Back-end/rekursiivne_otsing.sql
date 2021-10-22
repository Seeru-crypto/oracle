WITH RECURSIVE rec (id) as
       (
         SELECT storage.id, storage.storage_name, storage.date_added, storage.date_modified, storage.parent_id, storage.user_id
		  from storage where parent_id=1
         UNION ALL
         SELECT storage.id, storage.storage_name, storage.date_added, storage.date_modified, storage.parent_id, storage.user_id
		 FROM rec, storage where storage.parent_id = rec.id
         )
       SELECT *
       FROM rec;