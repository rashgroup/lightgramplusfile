.class public Lnet/hockeyapp/android/metrics/model/EventData;
.super Lnet/hockeyapp/android/metrics/model/TelemetryData;
.source "EventData.java"


# instance fields
.field private measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/EventData;->InitializeFields()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/EventData;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    const-string/jumbo v0, "com.microsoft.applicationinsights.contracts.EventData"

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .locals 0

    return-void
.end method

.method public getBaseType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "EventData"

    return-object v0
.end method

.method public getEnvelopeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Microsoft.ApplicationInsights.Event"

    return-object v0
.end method

.method public getMeasurements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    return v0
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"ver\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"name\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"properties\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    invoke-static {p1, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string/jumbo v0, ","

    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"measurements\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    invoke-static {p1, v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->writeDictionary(Ljava/io/Writer;Ljava/util/Map;)V

    const-string/jumbo v0, ","

    :cond_1
    return-object v0
.end method

.method public setMeasurements(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->measurements:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->name:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->properties:Ljava/util/Map;

    return-void
.end method

.method public setVer(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/metrics/model/EventData;->ver:I

    return-void
.end method
