﻿@{
    BalloonText = @{
        Complete = "выполнена(о)."
        Error = "не выполнена(о)."
        FastRetry = "не завершена(о)."
        RestartRequired = "выполнена(о). Требуется перезагрузка."
        Start = "начата(о)."
    }
    BlockExecution = @{
        Message = "Запуск этого приложения временно заблокирован для завершения процесса установки."
    }
    ClosePrompt = @{
        ButtonClose = "Закрыть программы"
        ButtonContinue = "Продолжить"
        ButtonContinueTooltip = "Выберите `"Продолжить`" только после закрытия вышеперечисленных приложений."
        ButtonDefer = "Отложить"
        CountdownMessage = "ПРИМЕЧАНИЕ: Эти программы будут автоматически закрыты через:"
        Message = "Перед продолжением установки необходимо закрыть следующие программы.`nПожалуйста, сохраните вашу работу и закройте программы, а затем продолжите установку. Также вы можете сохранить вашу работу и нажать `"Закрыть программы`"."
    }
    DeferPrompt = @{
        Deadline = "Дата истечения:"
        ExpiryMessage = "Вы можете отложить установку приложения до тех пор, пока не истечет срок действия этой отсрочки:"
        RemainingDeferrals = "Оставшиеся отсрочки:"
        WarningMessage = "После истечения срока действия отсрочки вы больше не сможете отложить установку."
        WelcomeMessage = "Планируется установка следующего приложения:"
    }
    DeploymentType = @{
        Install = "Установка"
        Repair = "Исправление"
        Uninstall = "Удаление"
    }
    DiskSpace = @{
        Message = "У вас недостаточно пространства на диске для выполнения установки:`n{0}`n`nНеобходимое пространство на диске: {1}МБ`nДоступное пространство на диске: {2}МБ`n`nДля продолжения установки, пожалуйста, освободите достаточно пространства на диске."
    }
    Progress = @{
        MessageInstall = "Идет установка. Пожалуйста, подождите..."
        MessageInstallDetail = "Это окно закроется автоматически после завершения установки."
        MessageRepair = "Идет исправление. Пожалуйста, подождите..."
        MessageRepairDetail = "Это окно автоматически закроется по завершении ремонта."
        MessageUninstall = "Идет удаление. Пожалуйста, подождите..."
        MessageUninstallDetail = "Это окно закроется автоматически после завершения удаления."
    }
    RestartPrompt = @{
        ButtonRestartLater = "Минимизировать"
        ButtonRestartNow = "Перезагрузить сейчас"
        Message = "Для завершения установки необходимо перезагрузить ваш компьютер."
        MessageRestart = "Ваш компьютер будет автоматически перезагружен по завершению обратного отсчета."
        MessageTime = "Пожалуйста, сохраните вашу работу и выполните перезагрузку в отведенное время."
        TimeRemaining = "Оставшееся время:"
        Title = "Требуется перезагрузка"
    }
    WelcomePrompt = @{
        Classic = @{
            CountdownMessage = "{0} автоматически продолжится через:"
            CustomMessage = ""
        }
        Fluent = @{
            Subtitle = 'PSAppDeployToolkit - приложение {0}'
            DialogMessage = 'Пожалуйста, сохраните свою работу, прежде чем продолжить, так как следующие приложения будут закрыты автоматически.'
            DialogMessageNoProcesses = 'Чтобы продолжить установку, выберите Install (Установить). Если у вас остались отсрочки, вы также можете отложить установку.'
            ButtonDeferRemaining = 'оставаться'
            ButtonLeftText = 'Отложить'
            ButtonRightText = 'Закрыть приложения и установить'
            ButtonRightTextNoProcesses = 'Установите'
        }
    }
}

# SIG # Begin signature block
# MIIuLAYJKoZIhvcNAQcCoIIuHTCCLhkCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCi2dJD/IrA1DNV
# 83ltMdcAgYVFji2FSt7FFjKfwcRGpKCCE5UwggWQMIIDeKADAgECAhAFmxtXno4h
# MuI5B72nd3VcMA0GCSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNV
# BAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0xMzA4MDExMjAwMDBaFw0z
# ODAxMTUxMjAwMDBaMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# AL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/z
# G6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZ
# anMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7s
# Wxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL
# 2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfb
# BHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3
# JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3c
# AORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqx
# YxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0
# viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aL
# T8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amyHeUbAgMBAAGjQjBAMA8GA1Ud
# EwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMB0GA1UdDgQWBBTs1+OC0nFdZEzf
# Lmc/57qYrhwPTzANBgkqhkiG9w0BAQwFAAOCAgEAu2HZfalsvhfEkRvDoaIAjeNk
# aA9Wz3eucPn9mkqZucl4XAwMX+TmFClWCzZJXURj4K2clhhmGyMNPXnpbWvWVPjS
# PMFDQK4dUPVS/JA7u5iZaWvHwaeoaKQn3J35J64whbn2Z006Po9ZOSJTROvIXQPK
# 7VB6fWIhCoDIc2bRoAVgX+iltKevqPdtNZx8WorWojiZ83iL9E3SIAveBO6Mm0eB
# cg3AFDLvMFkuruBx8lbkapdvklBtlo1oepqyNhR6BvIkuQkRUNcIsbiJeoQjYUIp
# 5aPNoiBB19GcZNnqJqGLFNdMGbJQQXE9P01wI4YMStyB0swylIQNCAmXHE/A7msg
# dDDS4Dk0EIUhFQEI6FUy3nFJ2SgXUE3mvk3RdazQyvtBuEOlqtPDBURPLDab4vri
# RbgjU2wGb2dVf0a1TD9uKFp5JtKkqGKX0h7i7UqLvBv9R0oN32dmfrJbQdA75PQ7
# 9ARj6e/CVABRoIoqyc54zNXqhwQYs86vSYiv85KZtrPmYQ/ShQDnUBrkG5WdGaG5
# nLGbsQAe79APT0JsyQq87kP6OnGlyE0mpTX9iV28hWIdMtKgK1TtmlfB2/oQzxm3
# i0objwG2J5VT6LaJbVu8aNQj6ItRolb58KaAoNYes7wPD1N1KarqE3fk3oyBIa0H
# EEcRrYc9B9F1vM/zZn4wggawMIIEmKADAgECAhAIrUCyYNKcTJ9ezam9k67ZMA0G
# CSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDAeFw0yMTA0MjkwMDAwMDBaFw0zNjA0MjgyMzU5NTla
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVtC9C
# 0CiteLdd1TlZG7GIQvUzjOs9gZdwxbvEhSYwn6SOaNhc9es0JAfhS0/TeEP0F9ce
# 2vnS1WcaUk8OoVf8iJnBkcyBAz5NcCRks43iCH00fUyAVxJrQ5qZ8sU7H/Lvy0da
# E6ZMswEgJfMQ04uy+wjwiuCdCcBlp/qYgEk1hz1RGeiQIXhFLqGfLOEYwhrMxe6T
# SXBCMo/7xuoc82VokaJNTIIRSFJo3hC9FFdd6BgTZcV/sk+FLEikVoQ11vkunKoA
# FdE3/hoGlMJ8yOobMubKwvSnowMOdKWvObarYBLj6Na59zHh3K3kGKDYwSNHR7Oh
# D26jq22YBoMbt2pnLdK9RBqSEIGPsDsJ18ebMlrC/2pgVItJwZPt4bRc4G/rJvmM
# 1bL5OBDm6s6R9b7T+2+TYTRcvJNFKIM2KmYoX7BzzosmJQayg9Rc9hUZTO1i4F4z
# 8ujo7AqnsAMrkbI2eb73rQgedaZlzLvjSFDzd5Ea/ttQokbIYViY9XwCFjyDKK05
# huzUtw1T0PhH5nUwjewwk3YUpltLXXRhTT8SkXbev1jLchApQfDVxW0mdmgRQRNY
# mtwmKwH0iU1Z23jPgUo+QEdfyYFQc4UQIyFZYIpkVMHMIRroOBl8ZhzNeDhFMJlP
# /2NPTLuqDQhTQXxYPUez+rbsjDIJAsxsPAxWEQIDAQABo4IBWTCCAVUwEgYDVR0T
# AQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHwYD
# VR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYY
# aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2Fj
# ZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNV
# HR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNybDAcBgNVHSAEFTATMAcGBWeBDAEDMAgGBmeBDAEEATAN
# BgkqhkiG9w0BAQwFAAOCAgEAOiNEPY0Idu6PvDqZ01bgAhql+Eg08yy25nRm95Ry
# sQDKr2wwJxMSnpBEn0v9nqN8JtU3vDpdSG2V1T9J9Ce7FoFFUP2cvbaF4HZ+N3HL
# IvdaqpDP9ZNq4+sg0dVQeYiaiorBtr2hSBh+3NiAGhEZGM1hmYFW9snjdufE5Btf
# Q/g+lP92OT2e1JnPSt0o618moZVYSNUa/tcnP/2Q0XaG3RywYFzzDaju4ImhvTnh
# OE7abrs2nfvlIVNaw8rpavGiPttDuDPITzgUkpn13c5UbdldAhQfQDN8A+KVssIh
# dXNSy0bYxDQcoqVLjc1vdjcshT8azibpGL6QB7BDf5WIIIJw8MzK7/0pNVwfiThV
# 9zeKiwmhywvpMRr/LhlcOXHhvpynCgbWJme3kuZOX956rEnPLqR0kq3bPKSchh/j
# wVYbKyP/j7XqiHtwa+aguv06P0WmxOgWkVKLQcBIhEuWTatEQOON8BUozu3xGFYH
# Ki8QxAwIZDwzj64ojDzLj4gLDb879M4ee47vtevLt/B3E+bnKD+sEq6lLyJsQfmC
# XBVmzGwOysWGw/YmMwwHS6DTBwJqakAwSEs0qFEgu60bhQjiWQ1tygVQK+pKHJ6l
# /aCnHwZ05/LWUpD9r4VIIflXO7ScA+2GRfS0YW6/aOImYIbqyK+p/pQd52MbOoZW
# eE4wggdJMIIFMaADAgECAhAK+Vu2vqIMhQ6YxvuOrAj5MA0GCSqGSIb3DQEBCwUA
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwHhcNMjQwOTA1MDAwMDAwWhcNMjcwOTA3MjM1OTU5WjCB0TET
# MBEGCysGAQQBgjc8AgEDEwJVUzEZMBcGCysGAQQBgjc8AgECEwhDb2xvcmFkbzEd
# MBsGA1UEDwwUUHJpdmF0ZSBPcmdhbml6YXRpb24xFDASBgNVBAUTCzIwMTMxNjM4
# MzI3MQswCQYDVQQGEwJVUzERMA8GA1UECBMIQ29sb3JhZG8xFDASBgNVBAcTC0Nh
# c3RsZSBSb2NrMRkwFwYDVQQKExBQYXRjaCBNeSBQQywgTExDMRkwFwYDVQQDExBQ
# YXRjaCBNeSBQQywgTExDMIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEA
# uydxko2Hrl6sANJUjfdypKP60qBH5EkhfaRQAnn+e3vg2eVcbiEWIjlrMYzvK2sg
# OMBbwGebqAURkFmUCKDdGxcxKeuXdaXPHWPKwc2WjYCFajrX6HofiiwNzOCdL6VE
# 4PDQhPRR7SIdNNFSrx5C4ZDN1T6OH+ydX7EQF8+NBUNHRbEVdl+h9H5Aexx63afa
# 8zu3g/GXluyXKbb+JHtgNJaUgFuFORTxw1TO6qH+S6Hrppf9QcAFmu4xGtkc2FSh
# gv0NgWMNGDZqJr/o9sqJ2tdaZHDyr6H8PvY8egoUshF7ccgEYtEEdB9SRR8mVQik
# 1w5oGTjDWjHj+8jgTpzletRywptk/m8PehVBN8ntqoSdvLLcuQVzmuPLzN/iuKh5
# sZeWvqPONApcEnZcONpXebyiUPnEePr5rZAU7hMjMw2ZPnQlMcbGvtgP2qi7m2f3
# mXFYxWjlKCxaApYHeqSFeWC8zM7OYL2HlZ+GuK4XG8jKVE6sWSW9Wk/dm0vJbasv
# AgMBAAGjggICMIIB/jAfBgNVHSMEGDAWgBRoN+Drtjv4XxGG+/5hewiIZfROQjAd
# BgNVHQ4EFgQU5GCU3SEqeIbhhY9eyU0LcTI75X8wPQYDVR0gBDYwNDAyBgVngQwB
# AzApMCcGCCsGAQUFBwIBFhtodHRwOi8vd3d3LmRpZ2ljZXJ0LmNvbS9DUFMwDgYD
# VR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMIG1BgNVHR8Ega0wgaow
# U6BRoE+GTWh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRH
# NENvZGVTaWduaW5nUlNBNDA5NlNIQTM4NDIwMjFDQTEuY3JsMFOgUaBPhk1odHRw
# Oi8vY3JsNC5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmlu
# Z1JTQTQwOTZTSEEzODQyMDIxQ0ExLmNybDCBlAYIKwYBBQUHAQEEgYcwgYQwJAYI
# KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBcBggrBgEFBQcwAoZQ
# aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29k
# ZVNpZ25pbmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcnQwCQYDVR0TBAIwADANBgkq
# hkiG9w0BAQsFAAOCAgEAqA0ub/ilMgdIvMiBeWBoiMxe5OIblObGI7lemcP2WEqa
# EASW11/wVwJU63ZwhtkQaNU4rXjf6fqy5pOUzpQXgYjSaO4D/AOMJKHlypxslFqZ
# /dYpcue2xE3H7lmO4KPf8VxXuFIUqjLetU+kkh7o/Q52RabVAuOrPFKnObixy1HI
# x0/5F+RuP9xhqmDbfM7l5zUAcuOCCkY7buuInEsip9BZXUiVb8K5bPR9Rk7Doat4
# FQmN72xjakcEZOMU/vg0ZgVa8nxkBXtVsjxbsr+bODn0cddHK1QHWil/PmpANkxN
# 7H8tdCAZ8bTzIvvudxSLnt7ssbbQDkAyNw0btDH+MKv/l+VcYyQH51Z5xT9DvHCm
# Ed774boZkP2GfTFvn7/gISEjTdOuUGstdrgSwg1zJPqgK7zWxK48xC7awpa3gwOs
# 9pnyiqHG3rx84/SHUiAL2lkljsD3epmRxsWeZhZNY93xEpQHe9LBvo/t4VRjZzqU
# z+pfEMPqeX/g5+mpb4ap6ZmNJuAYJFmU0LIkCLQN9mKXi1Il9WU6ifn3vYutGMSL
# /BdeWP+7fM7MZLiO+1BIsBdSmV6pZVS3LRBAy3wIlbWL69mvyLCPIQ7z4dtfuzwC
# 36E9k2vhzeiDQ+k1dFJDSdxTDetsck0FuD1ovhiu2caL4BdFsCWsXPLMyvu6OlYx
# ghntMIIZ6QIBATB9MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
# SW5jLjFBMD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcg
# UlNBNDA5NiBTSEEzODQgMjAyMSBDQTECEAr5W7a+ogyFDpjG+46sCPkwDQYJYIZI
# AWUDBAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0B
# CQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAv
# BgkqhkiG9w0BCQQxIgQgzhY+gOco6jEukG5ISuvAt1PScVahkQg0yrdNm3y5Apow
# DQYJKoZIhvcNAQEBBQAEggGAk5Ra9ccDFS2UR0k2FFRy3t6fy+4YpyTH6+yZDIyg
# YDVFb9fUL9eTgs16T2ubgURldZNqcoX2AS7jVGH97L+su2lpRvH6O8viVfE/pbIF
# aUrvpPoBnlNvqpweDnM8gZUz8V7KMHdguDpxzX/mCCrCZ2zHtcpiOuVtoqgKg8bs
# TmmptMJv9d9QO7hiSfhpVRTaI/zLfnQGyppIPJaoCFFUO3XR3PfoGpt8gHpJwwFS
# IpK3u5XDNDC7TctsCyIyx2BcqAoNuZwWVTnPwTL4qXm0/GJ+DvoDsQjoyhhGxBiI
# JqD/FZxwAHVDGLsTcwP5AKLdtCF8MXkYOmfyCDYGrveg+Id3g026QyWnWObxrEP1
# CWCeVm1ZAVtnSepce0FS1DAM3B06hvloHMI0EZM0tk06j4ujKTewoQHI0h32M1q8
# uZCFwOQnEzwoG+QgMOYZ87EM2XJvQxmzhVGs2poMQV0ZB0bGFnDt8Cy0FtnxHVnH
# USlFJExnBvPzHay8H98IA8IVoYIXOjCCFzYGCisGAQQBgjcDAwExghcmMIIXIgYJ
# KoZIhvcNAQcCoIIXEzCCFw8CAQMxDzANBglghkgBZQMEAgEFADB4BgsqhkiG9w0B
# CRABBKBpBGcwZQIBAQYJYIZIAYb9bAcBMDEwDQYJYIZIAWUDBAIBBQAEIEuIjwqw
# 08Z6xLtaWh1Rj4gxzvBwUQ2crlG5QqO0ssuvAhEAxvgHH7NgVoS/m746wJnLGBgP
# MjAyNTAxMjAwODU4NDRaoIITAzCCBrwwggSkoAMCAQICEAuuZrxaun+Vh8b56QTj
# MwQwDQYJKoZIhvcNAQELBQAwYzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lD
# ZXJ0LCBJbmMuMTswOQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYg
# U0hBMjU2IFRpbWVTdGFtcGluZyBDQTAeFw0yNDA5MjYwMDAwMDBaFw0zNTExMjUy
# MzU5NTlaMEIxCzAJBgNVBAYTAlVTMREwDwYDVQQKEwhEaWdpQ2VydDEgMB4GA1UE
# AxMXRGlnaUNlcnQgVGltZXN0YW1wIDIwMjQwggIiMA0GCSqGSIb3DQEBAQUAA4IC
# DwAwggIKAoICAQC+anOf9pUhq5Ywultt5lmjtej9kR8YxIg7apnjpcH9CjAgQxK+
# CMR0Rne/i+utMeV5bUlYYSuuM4vQngvQepVHVzNLO9RDnEXvPghCaft0djvKKO+h
# Du6ObS7rJcXa/UKvNminKQPTv/1+kBPgHGlP28mgmoCw/xi6FG9+Un1h4eN6zh92
# 6SxMe6We2r1Z6VFZj75MU/HNmtsgtFjKfITLutLWUdAoWle+jYZ49+wxGE1/UXjW
# fISDmHuI5e/6+NfQrxGFSKx+rDdNMsePW6FLrphfYtk/FLihp/feun0eV+pIF496
# OVh4R1TvjQYpAztJpVIfdNsEvxHofBf1BWkadc+Up0Th8EifkEEWdX4rA/FE1Q0r
# qViTbLVZIqi6viEk3RIySho1XyHLIAOJfXG5PEppc3XYeBH7xa6VTZ3rOHNeiYnY
# +V4j1XbJ+Z9dI8ZhqcaDHOoj5KGg4YuiYx3eYm33aebsyF6eD9MF5IDbPgjvwmnA
# alNEeJPvIeoGJXaeBQjIK13SlnzODdLtuThALhGtyconcVuPI8AaiCaiJnfdzUcb
# 3dWnqUnjXkRFwLtsVAxFvGqsxUA2Jq/WTjbnNjIUzIs3ITVC6VBKAOlb2u29Vwgf
# ta8b2ypi6n2PzP0nVepsFk8nlcuWfyZLzBaZ0MucEdeBiXL+nUOGhCjl+QIDAQAB
# o4IBizCCAYcwDgYDVR0PAQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/
# BAwwCgYIKwYBBQUHAwgwIAYDVR0gBBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9bAcB
# MB8GA1UdIwQYMBaAFLoW2W1NhS9zKXaaL3WMaiCPnshvMB0GA1UdDgQWBBSfVywD
# dw4oFZBmpWNe7k+SH3agWzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsMy5k
# aWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0
# YW1waW5nQ0EuY3JsMIGQBggrBgEFBQcBAQSBgzCBgDAkBggrBgEFBQcwAYYYaHR0
# cDovL29jc3AuZGlnaWNlcnQuY29tMFgGCCsGAQUFBzAChkxodHRwOi8vY2FjZXJ0
# cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGlt
# ZVN0YW1waW5nQ0EuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQA9rR4fdplb4ziEEkfZ
# Q5H2EdubTggd0ShPz9Pce4FLJl6reNKLkZd5Y/vEIqFWKt4oKcKz7wZmXa5VgW9B
# 76k9NJxUl4JlKwyjUkKhk3aYx7D8vi2mpU1tKlY71AYXB8wTLrQeh83pXnWwwsxc
# 1Mt+FWqz57yFq6laICtKjPICYYf/qgxACHTvypGHrC8k1TqCeHk6u4I/VBQC9VK7
# iSpU5wlWjNlHlFFv/M93748YTeoXU/fFa9hWJQkuzG2+B7+bMDvmgF8VlJt1qQcl
# 7YFUMYgZU1WM6nyw23vT6QSgwX5Pq2m0xQ2V6FJHu8z4LXe/371k5QrN9FQBhLLI
# SZi2yemW0P8ZZfx4zvSWzVXpAb9k4Hpvpi6bUe8iK6WonUSV6yPlMwerwJZP/Gtb
# u3CKldMnn+LmmRTkTXpFIEB06nXZrDwhCGED+8RsWQSIXZpuG4WLFQOhtloDRWGo
# Cwwc6ZpPddOFkM2LlTbMcqFSzm4cd0boGhBq7vkqI1uHRz6Fq1IX7TaRQuR+0BGO
# zISkcqwXu7nMpFu3mgrlgbAW+BzikRVQ3K2YHcGkiKjA4gi4OA/kz1YCsdhIBHXq
# BzR0/Zd2QwQ/l4Gxftt/8wY3grcc/nS//TVkej9nmUYu83BDtccHHXKibMs/yXHh
# DXNkoPIdynhVAku7aRZOwqw6pDCCBq4wggSWoAMCAQICEAc2N7ckVHzYR6z9KGYq
# XlswDQYJKoZIhvcNAQELBQAwYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lD
# ZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGln
# aUNlcnQgVHJ1c3RlZCBSb290IEc0MB4XDTIyMDMyMzAwMDAwMFoXDTM3MDMyMjIz
# NTk1OVowYzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTsw
# OQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVT
# dGFtcGluZyBDQTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMaGNQZJ
# s8E9cklRVcclA8TykTepl1Gh1tKD0Z5Mom2gsMyD+Vr2EaFEFUJfpIjzaPp985yJ
# C3+dH54PMx9QEwsmc5Zt+FeoAn39Q7SE2hHxc7Gz7iuAhIoiGN/r2j3EF3+rGSs+
# QtxnjupRPfDWVtTnKC3r07G1decfBmWNlCnT2exp39mQh0YAe9tEQYncfGpXevA3
# eZ9drMvohGS0UvJ2R/dhgxndX7RUCyFobjchu0CsX7LeSn3O9TkSZ+8OpWNs5KbF
# Hc02DVzV5huowWR0QKfAcsW6Th+xtVhNef7Xj3OTrCw54qVI1vCwMROpVymWJy71
# h6aPTnYVVSZwmCZ/oBpHIEPjQ2OAe3VuJyWQmDo4EbP29p7mO1vsgd4iFNmCKseS
# v6De4z6ic/rnH1pslPJSlRErWHRAKKtzQ87fSqEcazjFKfPKqpZzQmiftkaznTqj
# 1QPgv/CiPMpC3BhIfxQ0z9JMq++bPf4OuGQq+nUoJEHtQr8FnGZJUlD0UfM2SU2L
# INIsVzV5K6jzRWC8I41Y99xh3pP+OcD5sjClTNfpmEpYPtMDiP6zj9NeS3YSUZPJ
# jAw7W4oiqMEmCPkUEBIDfV8ju2TjY+Cm4T72wnSyPx4JduyrXUZ14mCjWAkBKAAO
# hFTuzuldyF4wEr1GnrXTdrnSDmuZDNIztM2xAgMBAAGjggFdMIIBWTASBgNVHRMB
# Af8ECDAGAQH/AgEAMB0GA1UdDgQWBBS6FtltTYUvcyl2mi91jGogj57IbzAfBgNV
# HSMEGDAWgBTs1+OC0nFdZEzfLmc/57qYrhwPTzAOBgNVHQ8BAf8EBAMCAYYwEwYD
# VR0lBAwwCgYIKwYBBQUHAwgwdwYIKwYBBQUHAQEEazBpMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQQYIKwYBBQUHMAKGNWh0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQuY3J0MEMGA1Ud
# HwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRy
# dXN0ZWRSb290RzQuY3JsMCAGA1UdIAQZMBcwCAYGZ4EMAQQCMAsGCWCGSAGG/WwH
# ATANBgkqhkiG9w0BAQsFAAOCAgEAfVmOwJO2b5ipRCIBfmbW2CFC4bAYLhBNE88w
# U86/GPvHUF3iSyn7cIoNqilp/GnBzx0H6T5gyNgL5Vxb122H+oQgJTQxZ822EpZv
# xFBMYh0MCIKoFr2pVs8Vc40BIiXOlWk/R3f7cnQU1/+rT4osequFzUNf7WC2qk+R
# Zp4snuCKrOX9jLxkJodskr2dfNBwCnzvqLx1T7pa96kQsl3p/yhUifDVinF2ZdrM
# 8HKjI/rAJ4JErpknG6skHibBt94q6/aesXmZgaNWhqsKRcnfxI2g55j7+6adcq/E
# x8HBanHZxhOACcS2n82HhyS7T6NJuXdmkfFynOlLAlKnN36TU6w7HQhJD5TNOXrd
# /yVjmScsPT9rp/Fmw0HNT7ZAmyEhQNC3EyTN3B14OuSereU0cZLXJmvkOHOrpgFP
# vT87eK1MrfvElXvtCl8zOYdBeHo46Zzh3SP9HSjTx/no8Zhf+yvYfvJGnXUsHics
# JttvFXseGYs2uJPU5vIXmVnKcPA3v5gA3yAWTyf7YGcWoWa63VXAOimGsJigK+2V
# Qbc61RWYMbRiCQ8KvYHZE/6/pNHzV9m8BPqC3jLfBInwAM1dwvnQI38AC+R2AibZ
# 8GV2QqYphwlHK+Z/GqSFD/yYlvZVVCsfgPrA8g4r5db7qS9EFUrnEw4d2zc4GqEr
# 9u3WfPwwggWNMIIEdaADAgECAhAOmxiO+dAt5+/bUOIIQBhaMA0GCSqGSIb3DQEB
# DAUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNV
# BAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQg
# SUQgUm9vdCBDQTAeFw0yMjA4MDEwMDAwMDBaFw0zMTExMDkyMzU5NTlaMGIxCzAJ
# BgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5k
# aWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAL/mkHNo3rvkXUo8MCIwaTPs
# wqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/zG6Q4FutWxpdtHauyefLKEdLk
# X9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZanMylNEQRBAu34LzB4TmdDtt
# ceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7sWxq868nPzaw0QF+xembud8hI
# qGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL2pNe3I6PgNq2kZhAkHnDeMe2
# scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfbBHMqbpEBfCFM1LyuGwN1XXhm
# 2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3JFxGj2T3wWmIdph2PVldQnaH
# iZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3cAORFJYm2mkQZK37AlLTSYW3r
# M9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqxYxhElRp2Yn72gLD76GSmM9GJ
# B+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0viastkF13nqsX40/ybzTQRES
# W+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aLT8LWRV+dIPyhHsXAj6Kxfgom
# mfXkaS+YHS312amyHeUbAgMBAAGjggE6MIIBNjAPBgNVHRMBAf8EBTADAQH/MB0G
# A1UdDgQWBBTs1+OC0nFdZEzfLmc/57qYrhwPTzAfBgNVHSMEGDAWgBRF66Kv9JLL
# gjEtUYunpyGd823IDzAOBgNVHQ8BAf8EBAMCAYYweQYIKwYBBQUHAQEEbTBrMCQG
# CCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKG
# N2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJv
# b3RDQS5jcnQwRQYDVR0fBD4wPDA6oDigNoY0aHR0cDovL2NybDMuZGlnaWNlcnQu
# Y29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNybDARBgNVHSAECjAIMAYGBFUd
# IAAwDQYJKoZIhvcNAQEMBQADggEBAHCgv0NcVec4X6CjdBs9thbX979XB72arKGH
# LOyFXqkauyL4hxppVCLtpIh3bb0aFPQTSnovLbc47/T/gLn4offyct4kvFIDyE7Q
# Kt76LVbP+fT3rDB6mouyXtTP0UNEm0Mh65ZyoUi0mcudT6cGAxN3J0TU53/oWajw
# vy8LpunyNDzs9wPHh6jSTEAZNUZqaVSwuKFWjuyk1T3osdz9HNj0d1pcVIxv76FQ
# Pfx2CWiEn2/K2yCNNWAcAgPLILCsWKAOQGPFmCLBsln1VWvPJ6tsds5vIy30fnFq
# I2si/xK4VC0nftg62fC2h5b9W9FcrBjDTZ9ztwGpn1eqXijiuZQxggN2MIIDcgIB
# ATB3MGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkG
# A1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3Rh
# bXBpbmcgQ0ECEAuuZrxaun+Vh8b56QTjMwQwDQYJYIZIAWUDBAIBBQCggdEwGgYJ
# KoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMBwGCSqGSIb3DQEJBTEPFw0yNTAxMjAw
# ODU4NDRaMCsGCyqGSIb3DQEJEAIMMRwwGjAYMBYEFNvThe5i29I+e+T2cUhQhyTV
# hltFMC8GCSqGSIb3DQEJBDEiBCAbBFVhXmvvzomuBNYZPgZJgwLFYXCYxBdYKBeR
# FyFlhDA3BgsqhkiG9w0BCRACLzEoMCYwJDAiBCB2dp+o8mMvH0MLOiMwrtZWdf7X
# c9sF1mW5BZOYQ4+a2zANBgkqhkiG9w0BAQEFAASCAgB14+MZqokU67az5gx7HznR
# 0MQEIhQz1tiSgJUwKbc4+w2KfGuZAXCdOlziChjhOtEUYnUeXSHRe4ZcmsZ1n3Ic
# 7NAe6Q68/WNoSB45ZFpsDSH5YHtIGAJ+xVjG/F//y9RRuAjYipO3W6bnL7eNRQqj
# ZrNJR7QR2mKho8EM4iE6z9reElhfbFMh8vIFhnpK0kmrxYvoA3tiicEHgRWsxeSh
# DLcpYefBEEdou+zwpZrAVapHQRAlOtv5JL5ee1XSg696MLKMVbjhWBv0IzwqLenO
# R4CnbYqVbIlhTMZhcI9J3UiUx+xxHE2m0AxtTkWvVBOlIPCTfPYpnkR8CFpfF6Nv
# GPDDqMrFfCkZDRF7vb/Kg0LZUwMsCz744G8V4ZkbA1d04AGJTdr6Nocs0FyszsKt
# 2F2ooRa12Va6Buy6jc2WWze03u1bNw6b8XCOV7FAL6RuMyhCdnrhM2y6hJOnVEyy
# rQL4G8v1YI6dtuFUkEnJHz9uLZB9SkB/zBNKQBqRhlIh/DjWpqL+IV1DNHVppHXF
# JaO1z8B8r5lmI+JyhuvwdgSjmDxGCLkRyYf4qzjbVWAxGk+h4qR5pMp5iJ0O3gai
# 1+Luab3oVMXqi4P9Jorq/hHkcafQfvO23m3tlohI+Hedfdq1ykNd3GhxNggScZsW
# wacdFcaSxxfThujlWxE0gw==
# SIG # End signature block
