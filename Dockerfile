# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
#COPY release .

# COPY github actions artifacts from artifact download folder
COPY expense-artifact .
ENTRYPOINT ["dotnet", "expense.dll"]
