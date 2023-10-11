@company = Company.create(name: "A One Company")

@ice_factory_one = IceFactory.create(name: "Ice Factory One", company: @company)
@ice_factory_two = IceFactory.create(name: "Ice Factory Two", company: @company)

@camera_one = Camera.create(name: "Camera One", ice_factory: @ice_factory_one)
@camera_two = Camera.create(name: "Camera Two", ice_factory: @ice_factory_one)
@camera_three = Camera.create(name: "Camera Three", ice_factory: @ice_factory_two)
@camera_four = Camera.create(name: "Camera Four", ice_factory: @ice_factory_two)

@event_one = Event.create(camera: @camera_one, numberOfIceBlocks: 10)
@event_two = Event.create(camera: @camera_two, numberOfIceBlocks: 20)
@event_three = Event.create(camera: @camera_four, numberOfIceBlocks: 30)
@event_four = Event.create(camera: @camera_four, numberOfIceBlocks: 40)
