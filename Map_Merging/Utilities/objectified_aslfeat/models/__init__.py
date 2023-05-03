def get_model(name):
    # print('models.{}'.format(name))
    # print('I.m here')
    # literally the import line at the top of scripts
    print(''.join(n.capitalize() for n in name.split('_')))

    mod = __import__('models.{}'.format(name), fromlist=[''])
    return getattr(mod, _module_to_class(name))


def _module_to_class(name):
    print(''.join(n.capitalize() for n in name.split('_')))
    return ''.join(n.capitalize() for n in name.split('_'))

