// See https://aka.ms/new-console-template for more information
using Google.Apis.Sheets.v4.Data;
using Google.Apis.Sheets.v4;
using GoogleSheetOperation.Authentication;
using GoogleSheetOperation.Repository;
using Microsoft.Extensions.DependencyInjection;
using System;
using GoogleSheetOperation;
using GoogleSheetOperation.IRepository;

var serviceProvider = new ServiceCollection()
                         .AddScoped<BRTABill>()
                         .AddScoped<IReadOperation, ReadOperation>()
                         .AddScoped<AuthenticationKey>()
                         .BuildServiceProvider();

BRTABill brtabill = serviceProvider.GetRequiredService<BRTABill>(); 
brtabill.cal();

Console.WriteLine("Hello, World!");
