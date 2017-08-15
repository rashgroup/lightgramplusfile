.class public Lnet/hockeyapp/android/metrics/model/SessionStateData;
.super Lnet/hockeyapp/android/metrics/model/TelemetryData;
.source "SessionStateData.java"


# instance fields
.field private state:Lnet/hockeyapp/android/metrics/model/SessionState;

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/SessionStateData;->InitializeFields()V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/SessionStateData;->SetupAttributes()V

    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .locals 1

    const-string/jumbo v0, "com.microsoft.applicationinsights.contracts.SessionStateData"

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->QualifiedName:Ljava/lang/String;

    return-void
.end method

.method public SetupAttributes()V
    .locals 0

    return-void
.end method

.method public getBaseType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SessionStateData"

    return-object v0
.end method

.method public getEnvelopeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Microsoft.ApplicationInsights.SessionState"

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lnet/hockeyapp/android/metrics/model/SessionState;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

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

    iget v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

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

    const-string/jumbo v1, "\"state\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/SessionState;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    return-object v0
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

    return-void
.end method

.method public setState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->state:Lnet/hockeyapp/android/metrics/model/SessionState;

    return-void
.end method

.method public setVer(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/metrics/model/SessionStateData;->ver:I

    return-void
.end method
