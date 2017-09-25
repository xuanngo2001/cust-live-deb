# Check installation

    # Create phpinfo.php page.
    echo '<?php echo phpinfo(); ?>' > /var/www/html/phpinfo.php
    
    # Open URL.
    http://localhost/phpinfo.php
    
    # Should see:
    #   GD Support  enabled