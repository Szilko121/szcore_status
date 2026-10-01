# API

Server exports: `GetStatus(source,key?)`, `SetStatus(source,key,value)`, `AddStatus(source,key,amount)`, `RemoveStatus(source,key,amount)`.

Net event `szcore_status:tick` is rate-limited through the core secure-event service.
