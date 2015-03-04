using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ProgramInformationDatabase.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            _Default d = new _Default();

            int n1 = 5;
            int n2 = 10;
            int expected = 15;
            int actual = d.add(n1, n2);
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void TestMethod2()
        {
            MappingForm d = new MappingForm();

            int n1 = 5;
            int n2 = 10;
            int expected = -5;
            int actual = d.subtract(n1, n2);
            Assert.AreEqual(expected, actual);
        }
    }
}
